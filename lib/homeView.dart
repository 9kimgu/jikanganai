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
    return CustomScrollView(slivers: <Widget>[
      const SliverAppBar(
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
                'Popular',
                style: Theme.of(context).textTheme.title,
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 200.0,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
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
              ])),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Trending',
                style: Theme.of(context).textTheme.title,
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 200.0,
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Now Airing',
                style: Theme.of(context).textTheme.title,
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 200.0,
          ),
        ]),
      )
    ]);
  }
}
