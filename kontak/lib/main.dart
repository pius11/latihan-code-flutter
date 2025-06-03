import 'package:flutter/material.dart';
import 'list_kontak.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      home: ListKontakPage(),
    );
      
  }
}
