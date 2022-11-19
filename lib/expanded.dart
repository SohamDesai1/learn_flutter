// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last, prefer_const_literals_to_create_immutables

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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.cyan,
                child: Text('first'),
              ),
            ),
            Expanded(
              flex : 5,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.purple,
                child: Text('second'),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.yellow,
                child: Text('third'),
              ),
            )
          ],
        ));
  }
}
