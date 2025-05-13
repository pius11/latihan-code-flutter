import 'package:flutter/material.dart';

class Home_icon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent),
      body: const Center(
        child:Icon(
          Icons.face,
          color: Colors.black12,
          size: 100,
        ),
      ),
    );
  }
}
