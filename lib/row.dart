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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('hello'),
            TextButton(
              onPressed: () => {},
              child: Text('click'),
              style: TextButton.styleFrom(backgroundColor: Colors.purple),
            ),
            Container(
              child: Text('container'),
              color: Colors.blue,
            )
          ],
        ));
  }
}
