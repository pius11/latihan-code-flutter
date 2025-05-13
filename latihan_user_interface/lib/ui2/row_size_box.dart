import 'package:flutter/material.dart';

class RowSizeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple),
      body: Container(
        color: Colors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'i wayan pius wiprajana samita',
              style: TextStyle(fontSize: 20),
            ),
            Text('2315354034', style: TextStyle(fontSize: 20)),
            Text('4B TRPL', style: TextStyle(fontSize: 20)),
            Text('11', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
