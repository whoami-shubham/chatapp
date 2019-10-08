import 'package:chatapp/store.dart';
import 'package:chatapp/user.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Users extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<Store>(context);
    var pattern = store.getSearchPattern();
    return WillPopScope(
         onWillPop: () async {
           store.setStatus("join",400);
            Navigator.pop(context);
            return false;
            
         },
        child: Scaffold(
          appBar: AppBar(
            title: TextField(
              controller: pattern,
              decoration: InputDecoration.collapsed(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white)),
              onChanged: (text) {
                    store.updateSearchPattern(pattern.text);
                    pattern.selection = TextSelection.fromPosition(
                    TextPosition(offset: pattern.text.length));
                    
              },
            ),
          ),
          body: store.getuser()!=null && store.getuser().length>0? UserList(store.getusers()) : Expanded(child: Center(child: CircularProgressIndicator()))
    ),
    );
  }
}

class UserList extends StatelessWidget {
  final List<dynamic> data;
  UserList(this.data);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(child: User(name: data[index])
          );
        }
      );
  }
}

