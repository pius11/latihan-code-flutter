import 'package:flutter/material.dart';
import 'package:latihan_user_interface/home.dart';
import 'package:latihan_user_interface/home_buttonPadding.dart';
import 'package:latihan_user_interface/home_icon.dart';
import 'package:latihan_user_interface/modulGambar/gambar.dart';
import 'package:latihan_user_interface/ui2/home_column.dart';
import 'package:latihan_user_interface/ui2/row_size_box.dart';
import 'package:latihan_user_interface/ui2/single_child_scroll_view.dart';
import 'package:latihan_user_interface/ui3/basicStateManajement.dart';
import 'package:latihan_user_interface/ui3/basicStateManajement_stateless.dart';
import 'package:latihan_user_interface/ui3/navigatorPush.dart';
import 'package:latihan_user_interface/ui4/gridview.dart';
import 'package:latihan_user_interface/ui4/gridviewCount.dart';
import 'package:latihan_user_interface/ui4/listViewBuilder.dart';
import 'package:latihan_user_interface/ui4/listViewText.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Listviewbuilder(),
   );
  }
}