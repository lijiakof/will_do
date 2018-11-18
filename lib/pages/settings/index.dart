import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  Settings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting')
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Theme'),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: Text('FAQ'),
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('About us'),
          ),
          ListTile(
            leading: Icon(Icons.apps),
            title: Text('Version 0.1.0'),
          ),
        ],
      )
    );
  }
}