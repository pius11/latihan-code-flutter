import 'package:flutter/material.dart';

class Form2 extends StatefulWidget {
  @override
  _BelajarForm2State createState() => _BelajarForm2State();
}

class _BelajarForm2State extends State<Form2> {
  final _formkey = GlobalKey<FormState>();
  double nilaislider = 50;
  bool nilaiChekbox = false;
  bool nilaiSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" form 2")),

      body: Form(
        key: _formkey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: new InputDecoration(
                    hintText: "conton exemple@gmail.com",
                    labelText: "alamat email",
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "email tidak boleh kosong";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    labelText: "password",
                    icon: Icon(Icons.security),
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'password tidak boleh kosong';
                    }
                    return null;
                  },
                ),
              ),
              CheckboxListTile(
                title: Text('check box'),
                subtitle: Text('dart, widget, http'),
                value: nilaiChekbox,
                activeColor: Colors.deepPurpleAccent,
                onChanged: (value) {
                  setState(() {
                    nilaiChekbox = value!;
                  });
                },
              ),
              SwitchListTile(
                title: Text("switch"),
                subtitle: Text('dart, node, php, java'),
                value: nilaiSwitch,
                activeColor: Colors.red,
                activeTrackColor: Colors.amber,
                onChanged: (value) {
                  setState(() {
                    nilaiSwitch = value;
                  });
                },
              ),
              Slider(
                value: nilaislider,
                min: 0,
                max: 100,
                onChanged: (value) {
                  setState(() {
                    nilaislider = value;
                  });
                },
              ),
              ElevatedButton(
                child: Text("submit", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent),
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
