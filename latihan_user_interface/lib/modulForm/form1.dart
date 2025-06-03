import 'package:flutter/material.dart';

class Form1 extends StatefulWidget {
  @override
  _BelajarForm1State createState() => _BelajarForm1State();
}

class _BelajarForm1State extends State<Form1> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("form pius")),
      body: Form(
        key: _formkey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: new InputDecoration(
                  hintText: 'contoh: wayan pius',
                  labelText: 'nama lengkap',
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'nama tidak boleh kososng';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child: Text("submit", style: TextStyle(color: Colors.green)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
