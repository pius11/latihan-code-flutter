import 'package:flutter/material.dart';

class Gambar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('data gambar pius'),
          backgroundColor: Colors.amberAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/pap.jpg'),
              Image.asset('images/pp.png'),
            ],
          ),
        ),
      ),
    );
  }
}