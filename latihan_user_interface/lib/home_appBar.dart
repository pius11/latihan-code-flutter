import 'package:flutter/material.dart';

class Home_appBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        leading: const Icon(Icons.menu),
        titleSpacing: 0,
        title: const Text('Home'),
        centerTitle: true,
        actions: [Icon(Icons.notifications), Icon(Icons.settings)],
      ),

      body: const Center(
        child: Icon(Icons.face, color: Colors.black12, size: 100),
      ),
    );
  }
}
