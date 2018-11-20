import 'package:flutter/material.dart';
import '../pages/todo/detail.dart';
import '../pages/todo/list.dart';

class TodoRouters {

  detail({String title}) {
    return MaterialPageRoute(
      builder: (context) => TodoDetail(title: title)
    );
  } 

  list() {
    return MaterialPageRoute(
      builder: (context) => TodoList()
    );
  }

}