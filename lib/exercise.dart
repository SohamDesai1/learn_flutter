// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Page(),
    ));

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text('Demo Page'),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Soham Desai',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              height: 20,
              color: Colors.black12,
              thickness: 2,
            ),
            Text(
              'Level',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text('10', style: TextStyle(color: Colors.white))
          ],
        ),
      ),
    );
  }
}
