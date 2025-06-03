import 'package:flutter/material.dart';
import 'package:pegawai/models/pegawai.dart';

class DetailPage extends StatelessWidget {
  final Pegawai? pegawai;

  DetailPage(this.pegawai);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Center(
        child: Column(
          children: [
            Text('Firs name : ${pegawai!.firstName}'),
            Text('Last name : ${pegawai!.lastName}'),
            Text('Mobile No : ${pegawai!.mobileNo}'),
            Text('Email : ${pegawai!.email}'),
          ],
        ),
      ),
    );
  }
}
