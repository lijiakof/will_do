import 'package:flutter/material.dart';
import './pages/todo/detail.dart';
import './pages/todo/list.dart';
import './pages/settings/index.dart';

class Routers {

  static todoDetail({String title}) {
    return MaterialPageRoute(
      builder: (context) => TodoDetail(title: title)
    );
  } 

  static todoList() {
    return MaterialPageRoute(
      builder: (context) => TodoList()
    );
  }
  
  static settings() {
    return MaterialPageRoute(
      builder: (context) => Settings()
    );
  }

}