import 'package:flutter/material.dart';
import './message.dart';


class Messages extends StatelessWidget {
  final String user;
  final dynamic messages;
  Messages({this.user, this.messages});

  @override
  Widget build(BuildContext context) {
    //print({"messages : ", messages});
    return Scaffold(
      body: Center(
        child: _showMessages(messages),
      ),
    );
  }

  _showMessages(dynamic messages) {
    if (messages == null || messages.length == 0) {
      return Container(
             child: Text(""),
          );
          
    } else {
      return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: messages.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                child: Message(
                    id: messages[index].id,
                    from: messages[index].from,
                    to: messages[index].to,
                    message: messages[index].message,
                    time: messages[index].time));
          });
    }
  }
}

