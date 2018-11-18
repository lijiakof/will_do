import 'package:flutter/material.dart';
import './pages/todo/list.dart';
import './pages/todo/detail.dart';
import './pages/settings/index.dart';

void main() => runApp(WillDoApp());

class WillDoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Will Do',
      theme: ThemeData(
        //primarySwatch: Colors.red,
        primaryColor: Colors.black,
        primaryColorBrightness: Brightness.dark,
      ),
      home: TodoList(title: 'Will Do'),
      routes: <String, WidgetBuilder>{
        '/todo/list': (_) => TodoList(title: 'Will Do'),
        '/todo/detail': (_) => TodoDetail(title: 'Todo'),
        '/settings': (_) => Settings(),
      },
    );
  }
}