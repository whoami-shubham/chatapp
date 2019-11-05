import 'package:chatapp/store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Message extends StatelessWidget {
  final String message;
  final String from;
  final String to;
  final String id;
  final String time;
  Message(
      {@required this.from,
      @required this.to,
      @required this.message,
      @required this.id,
      @required this.time});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Store>(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: from == store.getuser()
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: <Widget>[
        Container(
          color: from != store.getuser()
              ? Color.fromRGBO(218, 247, 166, 1)
              : Colors.blue,
          constraints: BoxConstraints(maxWidth: 370),
          margin: EdgeInsets.all(3),
          padding: EdgeInsets.all(8),
          child: Padding(
            padding: EdgeInsets.all(2),
            child: Text(
              message,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
                color: from != store.getuser()?Colors.black:Colors.white
              ),
            ),
          ),
        )
      ],
    );
  }

  factory Message.fromJson(dynamic res) {
    return Message(
      id: res.id.toString(),
      from: res.from,
      to: res.to,
      message: res.message,
      time: res.time,
    );
  }
}
