import 'package:flutter/material.dart';
import '../pages/todo/detail.dart';
import '../pages/todo/list.dart';

class TodoRouters {

  detail({String title, Map<String, dynamic> model}) {
    return MaterialPageRoute(
      builder: (context) => TodoDetail(title: title, model: model,)
    );
  } 

  list() {
    return MaterialPageRoute(
      builder: (context) => TodoList()
    );
  }

}