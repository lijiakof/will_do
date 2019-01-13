import 'package:flutter/material.dart';

class TodoDetail extends StatefulWidget {
  TodoDetail({Key key, this.title, this.model}) : super(key: key);

  final String title;
  final Map<String, dynamic> model;

  @override
  _TodoDetail createState() => _TodoDetail();
}
class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

class _TodoDetail extends State<TodoDetail> {

  final titleController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    titleController.text = widget.model['title'];
    super.initState();

    titleController.addListener(() {
      widget.model['title'] = titleController.text;
    });
  }

  @override
  void dispose() {
    
    titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (context){
              return [
                PopupMenuItem(
                  value: 'Save',
                  child: Text('Save'),
                ),
                PopupMenuItem(
                  value: 'Sync',
                  child: Text('Sync'),
                ),
                PopupMenuItem(
                  value: 'Delete',
                  child: Text('Delete'),
                ),
              ];
            }
          )
        ]
      ),
      body: Form(
        child:  Column(      
          //padding: EdgeInsets.all(10),
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10),),
            ListTile(
              leading: Icon(Icons.check),
              title: TextFormField(
                keyboardType: TextInputType.text,
                controller: titleController,
                decoration: InputDecoration(
                  hintText: 'What will you want to do？',
                  border: InputBorder.none
                ),
                onEditingComplete: () {
                  
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text(
                'When?',
                style: TextStyle(
                  color: Colors.grey
                )
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: Text('Tomorrow'),
                        ),
                        ListTile(
                          title: Text('Next week'),
                        )
                      ],
                    );
                  }
                );
              }
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.timer),
              title: Text(
                'Remind',
                style: TextStyle(
                  color: Colors.grey
                )
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: Text('Tomorrow'),
                        ),
                        ListTile(
                          title: Text('Next week'),
                        )
                      ],
                    );
                  }
                );
              },
            ),
            Divider(),
            ListTile(
              title: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Remarks',
                  border: InputBorder.none
                ),
              ),
            ),
            Divider(),
          ],
        ),
      )
    );
  }
}