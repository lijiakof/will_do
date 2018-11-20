import 'package:flutter/material.dart';
import '../routers/index.dart';

class TodoItem extends StatefulWidget {
  TodoItem({Key key, this.data}) : super(key: key);

  final Map<String, dynamic> data;

  @override
  _TodoItem createState() => _TodoItem();
}

class _TodoItem extends State<TodoItem> {

  @override
  Widget build(BuildContext context){
    return Container(
      child: ListTile(
        leading: Checkbox(
          value: widget.data['done'],
          activeColor: Colors.black,
          onChanged: (bool) {
            setState(() {
              widget.data['done'] = bool;
            });
          },
        ),
        title: Text(widget.data['title'],
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            decoration: widget.data['done'] ? TextDecoration.lineThrough: TextDecoration.none
          )
        ),
        subtitle: Text(widget.data['date']),
        trailing: Icon(Icons.star_border),
        onTap: () {
          // Navigator.pushNamed(context, '/todo/detail');
          Navigator.push(context, Routers.todo.detail(title:'dd'));
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