import 'package:flutter/material.dart';

class TodoBox extends StatefulWidget {
  TodoBox({Key key}) : super(key: key);

  @override
  _TodoBox createState() => _TodoBox();
}

class _TodoBox extends State<TodoBox> {

  @override
    Widget build(BuildContext context){
      return Container(
        height: 50,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: 'What will you want to do？'
                )
              ),
            ),
            Icon(Icons.send)
          ],
        ),
        foregroundDecoration: BoxDecoration(
          border: BorderDirectional(
            top: BorderSide(
              color: Colors.grey,
              width: 0.5,
              style: BorderStyle.solid
            )
          )
        ),
        padding: EdgeInsets.only(
          right: 10
        ),
      );
    }
}