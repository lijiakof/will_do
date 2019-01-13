import 'package:flutter/material.dart';

class TodoBox extends StatefulWidget {
  TodoBox({Key key, this.onInsert}) : super(key: key);

  final ValueChanged<String> onInsert;

  @override
  _TodoBox createState() => _TodoBox();
}

class _TodoBox extends State<TodoBox> {

  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  addItem() {
    if(controller.text.isNotEmpty) {
      widget.onInsert(controller.text);
      controller.text = '';
    }
  }

  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Icon(Icons.check, color: Colors.grey),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                focusedBorder: InputBorder.none,
                border: InputBorder.none,
                hintText: 'What will you want to do？'
              ),
              controller: controller,
              onSubmitted: (text) => addItem(),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () => addItem(),
          )
        ],
      ),
      padding: EdgeInsets.only(left: 10),
      foregroundDecoration: BoxDecoration(
        border: BorderDirectional(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
            style: BorderStyle.solid
          )
        )
      ),
    );
  }
}