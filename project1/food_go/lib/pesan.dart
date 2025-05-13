import 'package:flutter/material.dart';

class Pesan extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("yahahahah"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('image/rick-astly-rick-rolled.gif',
              width: 800,
              height: 500,
            ),
           
          ],
        ),
      ),
    );
  }

}