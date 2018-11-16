import 'package:flutter/material.dart';
import './pages/home.dart';

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
      home: Home(title: 'Will Do'),
    );
  }
}