import 'package:flutter/material.dart';
import 'package:jikan_dart/jikan_dart.dart';
import 'package:jikanganai/details_model.dart';
import 'package:jikanganai/services.dart';

void toDetailsScreen(BuildContext context, String id) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(animeInfo: id),
      ));
}

class DetailsScreen extends StatelessWidget {
  final animeInfo;

  DetailsScreen({Key key, @required this.animeInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Details>(
        future: getDetails(animeInfo),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              appBar: AppBar(
                title: Text('${snapshot.data.title}'),
                leading: IconButton(
                  icon: Icon(Icons.keyboard_arrow_left),
                  onPressed: () {
                    _backToList(context);
                  },
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  void _backToList(BuildContext context) {
    Navigator.pop(context);
  }
}
