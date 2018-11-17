import 'package:flutter/material.dart';
import '../../components/todo-drawer.dart';
import '../../components/todo-box.dart';
import '../../components/todo-item.dart';

class TodoList extends StatefulWidget {
  TodoList({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TodoList createState() => _TodoList();
}

class _TodoList extends State<TodoList> {
  
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
        //leading: Icon(Icons.menu),
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {

            },
          )
        ],
      ),
      drawer: new Drawer(
        child: TodoDrawer(),
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

                return Dismissible(
                  key: Key(i.toString()),
                  //movementDuration: Duration.
                  onDismissed: (direction) {
                    
                  },
                  background: new Container(
                    color: Colors.grey,
                    child: Icon(Icons.check, color: Colors.white),
                    alignment: Alignment(-1, 0),
                    padding: EdgeInsets.only(left: 20),
                  ),
                  secondaryBackground: new Container(
                    color: Colors.grey,
                    child: Icon(Icons.delete, color: Colors.white),
                    alignment: Alignment(1, 0),
                    padding: EdgeInsets.only(right: 20),
                  ),
                  child: TodoItem(data: todoData),
                );
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