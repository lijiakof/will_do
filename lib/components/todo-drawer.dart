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
        UserAccountsDrawerHeader(
          currentAccountPicture: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
          ),
          accountName: Text(
            'Jay',
            style: TextStyle(
              fontSize: 20
            ),
          ),
          accountEmail: null,
          //decoration: DecorationImage,
        ),
        Column(
          //itemExtent: 36,
          children: <Widget>[
            ExpansionTile(
              title: Text('Lists',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                )
              ),
              initiallyExpanded: true,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text('Works'),
                ),
                ListTile(
                  leading: Icon(Icons.list),
                  title: Text('Life is good'),
                )
              ],
            ),
            
          ],
        ),
        Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('About us'),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('FAQ'),
            ),
          ],
        )
      ],
    );
  }
}