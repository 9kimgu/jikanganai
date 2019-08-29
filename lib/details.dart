import 'package:flutter/material.dart';


void toDetailsScreen(BuildContext context){
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(),
      )
  );
}


class DetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        leading: IconButton(icon: Icon(Icons.keyboard_arrow_left),
          onPressed: (){
            _backToList(context);
          },),
      ),
    );
  }
  void _backToList(BuildContext context){
    Navigator.pop(context);
  }
}