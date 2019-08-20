import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: ListView(children: const <Widget>[
          ListTile(
            leading: Icon(Icons.brightness_5),
            title: Text('Screen'),
          ),
        ]));
  }
}
