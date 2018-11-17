import 'package:flutter/material.dart';

class TodoDrawer extends StatefulWidget {
  TodoDrawer({Key key}) : super(key: key);

  @override
  _TodoDrawer createState() => _TodoDrawer();
}

class _TodoDrawer extends State<TodoDrawer> {

  @override
  Widget build(BuildContext context){ 
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          color: Colors.black,
          height: 160,
          padding: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
              ),
              Expanded(
                child: Text(' Jay',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            itemExtent: 36,
            children: <Widget>[
              ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Icon(Icons.list),
                title: Text('Works'),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Icon(Icons.list),
                title: Text('Life is good'),
              )
            ],
          )
        ),
        Divider(),
      ],
    );
  }
}