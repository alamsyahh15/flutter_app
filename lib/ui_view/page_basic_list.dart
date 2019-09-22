
import 'package:flutter/material.dart';

class PageBasicList extends StatelessWidget {
  const PageBasicList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Basic List'),
        backgroundColor: Colors.red,
      ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.access_alarm),   
              title: Text('alarm'),
            ),
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),

          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text('Phone Android'),
          )
        ],
      ),
    );
  }
} 