import 'package:chatapp/messages.dart';
import 'package:chatapp/store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Chat extends StatelessWidget {
  final String user;
  Chat({@required this.user});


  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Store>(context);
    String from = store.getuser();
    var curMessage = store.getCurMesseage();
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(user),
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Messages(
                user: from,
                messages: store.getmessages(user),
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(
                    child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: TextField(
                    controller: curMessage,
                    decoration:
                        InputDecoration.collapsed(hintText: "Send a message"),
                    onChanged: (text) {
                          store.updateCurMessage(text);
                          curMessage.selection = TextSelection.fromPosition(
                          TextPosition(offset: curMessage.text.length));
                    },
                  ),
                )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                    onPressed: () {
                      print(curMessage.text);
                      store.sendMessage(user);
                    },
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
  
}
