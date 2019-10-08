import 'package:chatapp/chat.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget{
  final String name;

  
  User({@required this.name});

  @override
  Widget build(BuildContext context){
      return Container(
         child: InkWell(
                 onTap: () {
                        //print('$name tapped !');
                       Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Chat(user: name))
                                      );
                   },
                 child:Padding(
                           padding: EdgeInsets.all(16),
                           child: Text( name, 
                                       style:TextStyle(fontSize: 24) ,
                                ),
                       ),
                   )
                 
      );
  }
}
