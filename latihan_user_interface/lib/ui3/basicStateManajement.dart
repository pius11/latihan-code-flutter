import 'package:flutter/material.dart';

class Basicstatemanajement extends StatefulWidget{
  @override
  State<Basicstatemanajement> createState() => _BasicstatemanajementState();
}

class _BasicstatemanajementState extends State<Basicstatemanajement> {
  int _data = 0;

  @override
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Basic state management"), backgroundColor: Colors.purpleAccent,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$_data", style: const TextStyle(fontSize: 40),),
            ElevatedButton(onPressed: (){
              _data++;
              setState(() {});
              print(_data);
            },
            child: const Text("PLUS +1"),
            ),
          ],
        ),
      ),
    );
  }
}