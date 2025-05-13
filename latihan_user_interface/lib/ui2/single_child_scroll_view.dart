import 'package:flutter/material.dart';

class HomeSingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(height: 100, color: Colors.red),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 244, 200, 54),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 105, 244, 54),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 54, 244, 235),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 54, 101, 244),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 133, 54, 244),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 70, 54, 244),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 70, 54, 244),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 70, 54, 244),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 70, 54, 244),
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              color: const Color.fromARGB(255, 70, 54, 244),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
