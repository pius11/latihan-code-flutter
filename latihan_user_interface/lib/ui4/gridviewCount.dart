import 'package:flutter/material.dart';
import 'package:latihan_user_interface/ui4/gridview.dart';

class Gridviewcount extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.amberAccent,
      title: Text('Gridview count pius'),
      centerTitle: true,
    ),
    body:GridView.count(
      crossAxisCount: 3,
      children: List.generate(9, (index){
        return Container(
          child: Card(
            color: Colors.black,
          ),
        );
      }),
    ),
  ),
    );
  }
}