import 'package:flutter/material.dart';

class Basicstatemanajement_less extends StatelessWidget {
  final int data;

  const Basicstatemanajement_less({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic state management"),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$data",
              style: const TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                
                print("Button pressed, current data: $data");
              },
              child: const Text("PLUS +1"),
            ),
          ],
        ),
      ),
    );
  }
}