import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Listviewtext extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("list view i wayan pius wiprajana samita"),
        backgroundColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text("flutter penggunaan list view class",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              lorem(paragraphs: 6, words: 1000), style: TextStyle(fontSize: 16),
              ),
          )
        ],
      ),
    );
  }
  
}