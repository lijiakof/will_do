import 'package:flutter/material.dart';
import './pages/todo/list.dart';

void main() => runApp(WillDoApp());

class WillDoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Will Do',
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryColorBrightness: Brightness.dark,
      ),
      home: TodoList(title: 'Work')
    );
  }
}