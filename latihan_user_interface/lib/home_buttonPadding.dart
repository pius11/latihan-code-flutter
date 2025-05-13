import 'package:flutter/material.dart';

class HomeButtonpadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            print("hy pius");
          },
          onLongPress: () {
            print("2315354034");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
          ),
          child: const Text('Click Me'),
        ),
      ),
    );
  }
}
