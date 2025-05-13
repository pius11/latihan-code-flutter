import 'package:flutter/material.dart';

class Listviewbuilder extends StatelessWidget {
  final List bulan = [
    "januari",
    "februari",
    "maret",
    "april",
    "mei",
    "juni",
    "juli",
    "agustus",
    "september",
    "oktober",
    "november",
    "desember",
    "desember",
    "desember",
    "desember",
    "desember",
    "desember",
    "desember",
    "desember",
    "desember",
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('list view builder pius'),
        centerTitle: true,
        
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(bulan[index], style: TextStyle(fontSize: 30)),
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}
