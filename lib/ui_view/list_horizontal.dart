import 'package:flutter/material.dart';


class ListHorizontal extends StatelessWidget {
  const ListHorizontal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Horizontal'),
        backgroundColor: Colors.amberAccent,
      ),

      body: Container(
        // margin : jarak antara widget
        // Padding : jarak didalam object

        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.orange,
            ),
            Container(
              width: 160.0,
              height: 200.0,
              color: Colors.green,
            )
          ],
        ),
      ),




    );
  }
}
