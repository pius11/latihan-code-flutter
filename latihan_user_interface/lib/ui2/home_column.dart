import 'package:flutter/material.dart';

class HomeColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Container(
        color: Colors.blue,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'i wayan pius wiprajana samita',
              style: TextStyle(fontSize: 20),
            ),
            Text('2315354034', style: TextStyle(fontSize: 20)),
            Text('4B TRPL', style: TextStyle(fontSize: 20)),
            Text('11', style: TextStyle(fontSize: 20)),
            Container(color: Colors.yellow, height: 70, width: 400),
          ],
        ),
      ),
    );
  }
}
