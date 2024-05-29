import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

class Bleu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Animation (Spin)'),
        iconTheme:
        IconThemeData(color: Colors.white, opacity: 10, size: 100.878),
      ),
      body: Container(
        child: Center(
          child: Spin(
            delay: Duration(milliseconds: 1000),
            duration: Duration(milliseconds: 3000),
            spins: 5,
            child: Icon(Icons.android_outlined,
            color: Colors.blue,
            size: 300,
            semanticLabel: 'Robot',
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        tooltip: 'return',
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyApp();

          }));
        },
        child: Icon(Icons.keyboard_return)
      ),
    );
  }

}