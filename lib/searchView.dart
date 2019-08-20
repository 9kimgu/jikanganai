import 'package:flutter/material.dart';

class _animeDescription extends StatelessWidget {
  _animeDescription({
    Key key,
    this.title,
    this.description,
    this.imageurl,
    this.score,
    this.id
}) : super(key: key);
  final String title;
  final String description;
  final String imageurl;
  final String score;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Column (
      children: <Widget>[
        Expanded(
          flex: 2,
        )
      ]
    );
  }
}

