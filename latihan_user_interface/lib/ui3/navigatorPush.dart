import 'package:flutter/material.dart';

class Navigatorpush extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('i wayan pius wiprajana samita'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => page2()),
            );
            print("page 2");
          },
          child: const Text("go to page 2"),
        ),
      ),
    );
  }
}


class page2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hy i wayan pius wiprajana samita'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => about()),
            );
            print("about");
          },
          child: const Text("go to about page"),
        ),
        
      ),
    );
  }
}
class about extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hy i wayan pius wiprajana samita'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('i wayan pius wiprajana samita', style: TextStyle(fontSize: 30),),
            Text('2315354034', style: TextStyle(fontSize: 30),),
            Text('4B TRPL ', style: TextStyle(fontSize: 30),),
            ElevatedButton(
          onPressed: () {
            Navigator.pop(
              context,
              
            );
            print("back");
          },
          child: const Text("go to back page"),
        ),
          ],
        )
        
      ),
    );
  }
}
