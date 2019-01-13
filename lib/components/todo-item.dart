import 'package:flutter/material.dart';
import '../routers/index.dart';

class TodoItem extends StatefulWidget {
  TodoItem({Key key, this.model}) : super(key: key);

  final Map<String, dynamic> model;

  @override
  _TodoItem createState() => _TodoItem();
}

class _TodoItem extends State<TodoItem> {

  @override
  Widget build(BuildContext context){
    return Container(
      child: ListTile(
        leading: Checkbox(
          value: widget.model['done'],
          activeColor: Colors.black,
          onChanged: (bool) {
            setState(() {
              widget.model['done'] = bool;
            });
          },
        ),
        title: Text(widget.model['title'],
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            decoration: widget.model['done'] ? TextDecoration.lineThrough: TextDecoration.none
          )
        ),
        subtitle: Row(
          children: <Widget>[
            Padding(
              child: Icon(Icons.calendar_today, size: 14, color: Colors.grey),
              padding: EdgeInsets.only(right: 5)
            ),
            Padding(
              child: Text(widget.model['date']),
              padding: EdgeInsets.only(right: 5)
            ),
            Padding(
              child: Icon(Icons.timer, size: 14, color: Colors.grey),
              padding: EdgeInsets.only(right: 5)
            ),
          ],
        ),
        trailing: Icon(Icons.star_border),
        onTap: () {
          // Navigator.pushNamed(context, '/todo/detail');
          Navigator.push(context, Routers.todo.detail(
            title: 'Work',
            model: widget.model
          ));
        },
        
      ),
      foregroundDecoration: BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.4,
            style: BorderStyle.solid
          )
        )
      )
    );
  }
}