import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Navigationbuttom extends StatefulWidget {
  @override
  _NavigationbuttomState createState() => _NavigationbuttomState();
  
}

class _NavigationbuttomState extends State<Navigationbuttom> {
  int _selecttedNavbar = 0;

  void _changeselectedNavbar(int index) {
    setState(() {
      _selecttedNavbar = index;
    });
  }
 

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("navbar"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Selected Index: $_selecttedNavbar",
          style: TextStyle(fontSize: 16),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ("beranda"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.assignment),
          label: ("pesanan"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail),
          label: ("inbox"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: ("akun"),
        ),
      ],
      currentIndex: _selecttedNavbar,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      onTap: _changeselectedNavbar,
      ),
    );
  }
}

