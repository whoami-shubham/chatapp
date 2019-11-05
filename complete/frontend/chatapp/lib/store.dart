import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'message.dart';
import './client.dart';

// update messages and user list in every duration

const duration = const Duration(seconds: 1);
const bool DEBUG = false;
class Store with ChangeNotifier {
List<String> _users; // list of users
Map<String, List<Message>> _messages; // messages of joined user
int _joinStatus; // join status
int _loggedStatus; // user joins second time using login . login status
TextEditingController _searchPattern; // search in userslist
TextEditingController _curMessage; // cur message user is typing
TextEditingController _user; // username in Textfield in join or login widget

  static API api;
  Store() {
    _peroidicUpdate();
    api = API();
  }


   initalize() async{
         _messages = {};
        _messages[_user.text] = [];
        _curMessage = TextEditingController();
        _searchPattern = TextEditingController();
        await fetchUsers();
        await fetchMessages();
  }

  // get users list
  List<String> getusers() {
    List<String> usrs = [];
    if (_users == null) {
      return usrs;
    }
    for (int i = 0; i < _users.length; i++) {
      if (_users[i] != _user.text) {
        usrs.add(_users[i]);
      }
    }
    // sort list so if user doesn't change list doesn't look like list updates after every seconds
    usrs.sort((a, b) {
      return a.toLowerCase().compareTo(b.toLowerCase());
    });

    if (_searchPattern.text.length > 0) {
      List<String> searchResult = [];
      usrs.forEach((usr) => {
            if (usr.toLowerCase().contains(_searchPattern.text.toLowerCase()))
              {searchResult.add(usr)}
          });
      return searchResult;
    }
    return usrs;
  }

  // get message of joined user with  name
  List<Message> getmessages(String name) {
    List<Message> msgs = [];
    if (_messages == null ||
        _messages[_user.text] == null ||
        _messages[_user.text].length == 0) {
      return msgs;
    }
    for (int i = 0; i < _messages[_user.text].length; i++) {
      if (_messages[_user.text][i].from == name ||
          _messages[_user.text][i].to == name) {
        msgs.add(_messages[_user.text][i]);
      }
    }
    return msgs;
  }

  getCurMesseage() {
    return _curMessage;
  }

  updateCurMessage(String msg) {
    _curMessage.text = msg;
    notifyListeners();
  }

  sendMessage(String to) async {
    try {
      final Response response = await api.sendmessage( _user.text, to, _curMessage.text);

      if (response.status == 200) {
        _messages[_user.text].add(Message.fromJson(response.payload));
        updateCurMessage("");
        notifyListeners();
        print({"Message : ",Message.fromJson(response.payload)});
      } else {
        print(response.message);
      }
    } catch (e) {
      debug("fsendMessages ", e);
    }
  }

  updateSearchPattern(String newpattern) {
    _searchPattern.text = newpattern;
    notifyListeners();
  }

  TextEditingController getSearchPattern() {
    return _searchPattern;
  }

  updateusers(List<String> usrs) {
    _users = usrs;
    notifyListeners();
  }

  getuserController() {
    return _user;
  }

  // get current joined user name

  getuser() {
    return _user == null ? null : _user.text;
  }

  // update username in TextField in Join and Login widget

  void updateUser(String newuser) {
    if (_user == null) {
      _user = TextEditingController();
    }
    _user.text = newuser;
    notifyListeners();
  }

  int getjoinstatus() {
    return _joinStatus == null ? 0 : _joinStatus;
  }

  // set status whether user is joined or  logged in
  setStatus(String type, int val) {
    if (type == "join") {
      _joinStatus = val;
    } else {
      _loggedStatus = val;
    }
    notifyListeners();
  }

  int getloginstatus() {
    return _loggedStatus == null ? 0 : _loggedStatus;
  }

  fetchUsers() async {
    try {
      final Response response = await api.getusers();

      if (response.status == 200) {
         //print("users : , ${response.payload}");
          var data = response.payload as List;
        _users = data!=null?data.map((i) => i.toString()).toList():[];
      } else {
        print(response.message);
      }
    } catch (e) {
      debug("fetchUsers ", e);
    }
    finally{
      notifyListeners();
    }
  }

  fetchMessages() async {
    try {
      final Response response = await api.getmessages(_user.text);

      if (response.status== 200) {
        if (response.payload != null) {
          
           var data = response.payload as List;
           debug("fetchMessages", data);
          _messages[_user.text] = data!=null?data.map((i) => Message.fromJson(i)).toList():[];
        }
      } else {
        print(response.message);
      }
    } catch (e) {
      debug("fetchMessages ", e);
    }
  }

  // for join and login requests

  Future join() async {
    try {
      final Response response = await api.join(_user.text);

      if (response.status == 200) {
         _joinStatus = 200;
        initalize();
      } 
      else {
         _joinStatus = response.status;
        debug("join ", response.message);
      }
    } catch (e) {
      debug("join", e);
    } finally {
      notifyListeners();
    }
    return _joinStatus;
  }
  
  Future login() async {
    try {
      final Response response = await api.login(_user.text);

      if (response.status == 200) {
         _loggedStatus = 200;
        initalize();
      } 
      else {
         _loggedStatus = response.status;
        debug("login ", response.message);
      }
    } catch (e) {
      debug("login", e);
    } finally {
      notifyListeners();
    }
    return _loggedStatus;
  }


  // update messages and users every 1 sec

  _update() async {
    try {
      //print("updating data");
      if (_user != null &&
          _user.text != "" &&
          (_joinStatus == 200 || _loggedStatus == 200)) {
        await fetchMessages();
        await fetchUsers();
        notifyListeners();
      }
    } catch (e) {
      debug("_update", e);
    }
  }

  _peroidicUpdate() {
    Timer.periodic(duration, (Timer t) => _update());
  }
}

debug(String source, dynamic message){
  if (DEBUG){
    print('${source}  : ${message}');
  }
}