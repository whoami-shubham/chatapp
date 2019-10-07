import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'message.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

const duration = const Duration(seconds: 1);

class Store with ChangeNotifier {
  List<dynamic> _users;

  Map<dynamic, List<dynamic>> _messages;
  
  int _joinStatus;
  int _loggedStatus;
  TextEditingController _searchPattern;
  TextEditingController _curMessage;
  TextEditingController _user;

  Store() {
    _peroidicUpdate();
  }

  List<dynamic> getusers() {
    List<dynamic> usrs = [];
    if (_users == null) {
      return usrs;
    }
    for (int i = 0; i < _users.length; i++) {
      if (_users[i] != _user.text) {
        usrs.add(_users[i]);
      }
    }
    usrs.sort((a, b) {
      return a.toLowerCase().compareTo(b.toLowerCase());
    });
    if (_searchPattern.text.length > 0) {
      List<dynamic> search_result = [];
      usrs.forEach((usr) => {
            if (usr.toLowerCase().contains(_searchPattern.text.toLowerCase()))
              {search_result.add(usr)}
          });
      return search_result;
    }
    return usrs;
  }

  List<Message> getmessages(String name) {
    List<Message> msgs = [];
    if (_messages == null ||
        _messages[_user.text] == null ||
        _messages[_user.text].length == 0) {
      return msgs;
    }
    for (int i = 0; i < _messages[_user.text].length; i++) {
      if (_messages[_user.text][i].from == name || _messages[_user.text][i].to == name) {
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
    var payload = {"From": _user.text, "To": to, "Message": _curMessage.text};
    print(_messages);
    _curMessage.text = "";
    final response =
        await http.post('http://192.168.43.42:4300/send', body: jsonEncode(payload));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      _messages[_user.text].add(Message.fromJson(data));
      notifyListeners();
      //print({'data : ', data});
    }
    else{
      print("failed to send message ");
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
  
  getuserController(){
    return _user;
  }

  getuser() {
    return _user==null?null:_user.text;
  }

  void updateUser(String newuser) {
    if(_user==null){
      _user = TextEditingController();
    }
    _user.text = newuser;
    notifyListeners();
  }

  int getjoinstatus() {
    return _joinStatus==null?0:_joinStatus;
  }

  setStatus(String type,int val){
     if(type=="join"){
       _joinStatus = val;
     }
     else{
       _loggedStatus = val;
     }
     notifyListeners();
  }

  int getloginstatus() {
    return _loggedStatus==null?0:_loggedStatus;
  }

  fetchUsers() async {
    final response = await http.get('http://192.168.43.42:4300/users');

    if (response.statusCode == 200) {
      var data = json.decode(response.body) as List;
      //print({'data : ', data});
      _users = data;
    } else {
      print("failed to fetch users");
    }
  }

  fetchMessages() async {
    final response =
        await http.get('http://192.168.43.42:4300/messages?of=' + _user.text);

    if (response.statusCode == 200) {
      var data = json.decode(response.body) as List;
      //print({'data : ', data});
      if (data != null) {
        _messages[_user.text] = data.map((i) => Message.fromJson(i)).toList();
      }
    } else {
      print("failed to fetch messages");
    }
  }

  Future join(String path) async {
    var user = {"name": _user.text};
    final response =
        await http.post('http://192.168.43.42:4300/' + path, body: jsonEncode(user));

    if (response.statusCode == 200) {
     // print("sucess");
      setStatus(path, 200);
      _messages = {};
      _messages[_user.text] = [];
      _curMessage = TextEditingController();
      _searchPattern = TextEditingController();
      await fetchUsers();
      await fetchMessages();
    } else if (response.statusCode == 400) {
      setStatus(path, 400);
      print("user already exists");
    } else {
      setStatus(path, 700);
      print('Failed to join');
    }
    notifyListeners();
    return path=="join"?_joinStatus:_loggedStatus;
  }

  _update() async {
    //print("updating data");
    if (_user != null && _user.text!="" && (_joinStatus == 200 || _loggedStatus==200)) {
      fetchMessages();
      fetchUsers();
      notifyListeners();
    }
  }

  _peroidicUpdate() {
    Timer.periodic(duration, (Timer t) => _update());
  }
}
