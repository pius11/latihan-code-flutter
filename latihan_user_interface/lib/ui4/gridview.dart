import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('grid view pius'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: GridView(
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   crossAxisCount: 2,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500,
            childAspectRatio: 3 / 2,
          ),
          children: <Widget>[
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
