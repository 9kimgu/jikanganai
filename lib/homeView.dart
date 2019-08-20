import 'package:flutter/material.dart';

class PlaceholderWidget2 extends StatelessWidget {
  final Color color;

  PlaceholderWidget2(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}


class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 200.0,
            color: Colors.blue,
          ),
          Container(
            width: 200.0,
            color: Colors.teal,
          ),
          Container(
            width: 200.0,
            color: Colors.orange,
          ),
          Container(
            width: 200.0,
            color: Colors.amber,
          ),
          Container(
            width: 200.0,
            color: Colors.grey,
          ),
        ]
    )
    );
  }
}
