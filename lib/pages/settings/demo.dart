import 'package:flutter/material.dart';

class Demo extends StatelessWidget {

  title(String txt) {
    return Text(txt, 
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widgets'),
      ),
      body: Column(
        children: <Widget>[
          title('Basics'),
          Text('Text Widget'),
          Image.network('https://metaimg.baichanghui.com/appdownload.jpg'),
          Icon(Icons.help),
          FlatButton(
            color: Colors.black,
            textColor: Colors.white,
            child: Text('Button'),
            onPressed: () { },
          ),
          IconButton(
            icon: Icon(Icons.help),
            iconSize: 20,
            color: Colors.black,
            onPressed: () { },
          ),
          title('Forms'),
        ],
      ),
    );
  }
}