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