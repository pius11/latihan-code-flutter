import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kontak/database/db_helper.dart';
import 'package:kontak/model/kontak.dart';

class Formkontak extends StatefulWidget {
  final Kontak? kontak;
  Formkontak({this.kontak});

  @override
  _formKontakState createState() => _formKontakState();
}

class _formKontakState extends State<Formkontak> {
  DbHelper db = DbHelper();

  TextEditingController? name;
  TextEditingController? lastName;
  TextEditingController? mobileNo;
  TextEditingController? email;
  TextEditingController? company;

  @override
  void initState() {
    name = TextEditingController(
      text: widget.kontak == null ? '' : widget.kontak!.name,
    );
    mobileNo = TextEditingController(
      text: widget.kontak == null ? '' : widget.kontak!.mobileNo,
    );
    email = TextEditingController(
      text: widget.kontak == null ? '' : widget.kontak!.email,
    );
    company = TextEditingController(
      text: widget.kontak == null ? '' : widget.kontak!.company,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("form kontak")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              controller: mobileNo,
              decoration: InputDecoration(
                labelText: 'mobileNo',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              controller: company,
              decoration: InputDecoration(
                labelText: 'company',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              onPressed: () {
                updsertKontak();
              },
              child:
                  (widget.kontak == null)
                      ? Text('add', style: TextStyle(color: Colors.black))
                      : Text('update', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> updsertKontak() async {
    if (widget.kontak != null) {
      await db.updatedKontak(
        Kontak.fromMap({
          'id': widget.kontak!.id,
          'name': name!.text,
          'mobileNo': mobileNo!.text,
          'email': email!.text,
          'company': company!.text,
        }),
      );
      Navigator.pop(context, 'update');
    } else {
      await db.saveKontak(
        Kontak.fromMap({
          'name': name!.text,
          'mobileNo': mobileNo!.text,
          'email': email!.text,
          'company': company!.text,
        }),
      );
      Navigator.pop(context, 'save');
    }
  }
}
