import 'package:flutter/material.dart';

class HomeStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(height: 500, color: Colors.amber),
          Container(
            height: 400,
            width: 300,
            color: const Color.fromARGB(255, 7, 255, 222),
          ),
          Container(
            height: 300,
            width: 200,
            color: const Color.fromARGB(255, 77, 255, 7),
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 7, 36, 255),
          ),
        ],
      ),
    );
  }
}
