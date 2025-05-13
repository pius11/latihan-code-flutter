import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
      ),

      body: Container(
        height: 100,
        width: 400,
        margin: const EdgeInsets.fromLTRB(50,150,30,16),
        padding: const EdgeInsets.fromLTRB(30,16,30,16),
        decoration: BoxDecoration( 
          color: Colors.blue,
          borderRadius: BorderRadius.circular(30),
        ),
        alignment: Alignment.center,
        child: const Text(
          'i wayan pius wrpajana samita',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}