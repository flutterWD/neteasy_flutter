import 'package:flutter/material.dart';
import 'package:neteasy_flutter/tab_navigator.dart';

void main() => runApp(App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wexindushu',
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: TabNavigator(),
    );
  }
}