import 'package:flutter/material.dart';

class TodoDetail extends StatefulWidget {
  TodoDetail({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TodoDetail createState() => _TodoDetail();
}

class _TodoDetail extends State<TodoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title)
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.check),
              title: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'What will you want to do？'
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.date_range),
              title: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: 'When？'
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.timer),
              title: TextFormField(
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: 'Remind'
                ),
              ),
            ),
            ListTile(
              title: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Remarks'
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}