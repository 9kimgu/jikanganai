import 'package:flutter/material.dart';

class SettingsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Settings')),
        body: ListView(children: <Widget>[
          ListTile(
            leading: Icon(Icons.format_paint),
            title: Text('Appearance'),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: (){

            },
          ),
          ListTile(
            leading: Icon(Icons.insert_drive_file),
            title: Text('Info'),
            onTap: (){

            },
          ),
        ]));
  }
}
