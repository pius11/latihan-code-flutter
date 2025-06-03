import 'package:flutter/material.dart';

class Navigatordrawerr extends StatefulWidget {
  @override
  _NavigatordrawerrState createState() => _NavigatordrawerrState();
}

class _NavigatordrawerrState extends State<Navigatordrawerr> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.account_circle),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        title: Text("Navigasi Drawer"),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
            icon: new Icon(Icons.account_box, color: Colors.white),
          ),
        ],
      ),
      drawer: drawerwidget(),
      endDrawer: drawerwidget(),
      body: Center(
        child: Text(
          "Selamat Datang di Navigasi Drawer",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class drawerwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItems(
            icon: Icons.folder,
            text: "myFile",
            onTap: () => print("tap my file"),
          ),
          _drawerItems(
            icon: Icons.group,
            text: "shered whit me",
            onTap: () => print("tap shered"),
          ),
          _drawerItems(
            icon: Icons.access_time,
            text: "recent",
            onTap: () => print("tap recent"),
          ),
          _drawerItems(
            icon: Icons.delete,
            text: "trash",
            onTap: () => print("tap trash"),
          ),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              "labels",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          _drawerItems(
            icon: Icons.bookmark,
            text: "family",
            onTap: () => print("tap family"),
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('images/pp.png'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('images/pap.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('images/pp.png'), fit: BoxFit.cover),
      ),
    ],
    accountName: Text('Pius'),
    accountEmail: Text("ppp@gmail.com"),
  );
}

Widget _drawerItems({
  required IconData icon,
  required String text,
  required VoidCallback onTap,
}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    ),
    onTap: onTap,
  );
}
