import 'package:chatapp/store.dart';
import 'package:chatapp/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Store>(context);
    final userController = store.getuserController();
    return WillPopScope(
      onWillPop: () async{
        Navigator.pop(context);
        return false;
      },
      child: Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(8),
              child: TextField(
                controller: userController,
                decoration: InputDecoration.collapsed(
                  hintText: "Type your username",
                ),
                onChanged: (text) {
                  store.updateUser(text);
                  userController.selection = TextSelection.fromPosition(
                      TextPosition(offset: userController.text.length));
                },
              )),
          Container(
            alignment: Alignment(-1, 0),
            margin: EdgeInsets.only(left: 20),
            child: RaisedButton(
              onPressed: () => _submit(store, context),
              child: Text('Login'),
            ),
          ),
          
        ],
      )),
    ),
    );
  }

  _submit(Store store, BuildContext context) async {
   
    if (store.getuser() != null && store.getuser().length > 0) {
      var status = await store.join("login");
      if (status == 400) {
        return _createAlert(context, "user does not exists");
      } else if (status == 200) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Users()));
      } else {
        return _createAlert(context, "something went wrong.");
      }
    } else {
      return _createAlert(context, "name can not be empty.");
    }
  }

  _createAlert(BuildContext context, String message) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(message),
            // content: Text(
            //   message,
            // ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('oK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
