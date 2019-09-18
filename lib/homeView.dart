import 'package:flutter/material.dart';
import 'package:jikan_dart/jikan_dart.dart';
import 'package:jikanganai/models/currentA_model.dart';
import 'package:jikanganai/services.dart';
import 'package:transparent_image/transparent_image.dart';
import 'dart:io';
import 'package:jikanganai/details.dart';
import 'package:async/async.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeWidget> {
  Future<CurrentSeason> _loadAnime;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      const SliverAppBar(
        leading: Icon(Icons.live_tv),
        pinned: false,
        expandedHeight: 40.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Jikan ga nai!'),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Popular this Season',
                style: Theme.of(context).textTheme.title,
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 200.0,
            child: FutureBuilder<CurrentSeason>(
                future: getCurrentAnime(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.all(8.0),
                              child: GestureDetector(
                                  onTap: () {
                                    toDetailsScreen(context,
                                        '${snapshot.data.anime[index].malId}');
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                    child: FadeInImage.memoryNetwork(
                                      placeholder: kTransparentImage,
                                      image:
                                          '${snapshot.data.anime[index].imageUrl}'))),
                            ));
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Trending',
                style: Theme.of(context).textTheme.title,
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 200.0,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                  width: 200.0,
                  color: Colors.orange,
                ),
                Container(
                  width: 200.0,
                  color: Colors.black,
                ),
                Container(
                  width: 200.0,
                  color: Colors.lime,
                ),
                Container(
                  width: 200.0,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 200.0,
                  color: Colors.grey,
                ),
              ])),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Now Airing',
                style: Theme.of(context).textTheme.title,
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 200.0,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Container(
                  width: 200.0,
                  color: Colors.pink,
                ),
                Container(
                  width: 200.0,
                  color: Colors.green,
                ),
                Container(
                  width: 200.0,
                  color: Colors.deepOrange,
                ),
                Container(
                  width: 200.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 200.0,
                  color: Colors.white,
                ),
              ])),
        ]),
      )
    ]);
  }
}
