import 'package:flutter/material.dart';
import '../components/todo-box.dart';
import '../components/todo-item.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<Map<String, dynamic>> data = [{
    'title':'Dart',
    'date': '2018-12-12',
    'done': false
  }, {
    'title':'Flutter',
    'date': '2018-12-13',
    'done': false
  }, {
    'title':'lite.js',
    'date': '2018-12-14',
    'done': false
  }, {
    'title':'lite.css',
    'date': '2018-12-15',
    'done': true
  }];

  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.black,
      //   child: Icon(Icons.edit),
      //   onPressed: () {

      //   },
      // ),
      body: Center(
        child: Stack(
          children: <Widget>[
            ListView.builder(
              //itemExtent: 20.0,
              itemCount: data.length,
              itemBuilder: (context, i) {
                
                Map<String, dynamic> todoData = data.length > i ? data[i]: {
                  'title': 'Nothing',
                  'date': ''
                };

                return TodoItem(data: todoData);
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: TodoBox(),
            ),
          ],
        ),
      )
      
      
    );
  }
}