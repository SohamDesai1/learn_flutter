// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Cont(),
    ));

class Cont extends StatelessWidget {
  const Cont({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello there'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(30),
        child: Text('Hello'),
        color: Colors.grey[600],
      ),
    );
  }
}
