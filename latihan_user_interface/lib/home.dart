import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purpleAccent),
      body: const Center(
        child: Text(
          'i wayan pius wiprajana samita',
          style: TextStyle(
            fontSize: 24, color: Colors.black
            ),
        ),
      ),
    );
  }
}
