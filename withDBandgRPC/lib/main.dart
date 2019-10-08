import 'package:chatapp/join.dart';
import 'package:chatapp/store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Store>(
        builder: (_) => Store(),
        child: MaterialApp(
          home: Join(),
        ));
  }
}
