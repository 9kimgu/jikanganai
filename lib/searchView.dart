import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.deepPurple,
            child: Text('?'),
          ),
          title: Text('Row $index'),
          subtitle: Text('This is a description.'),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            _toDetailsScreen(context);
          },
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}
void _toDetailsScreen(BuildContext context){
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
