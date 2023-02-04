// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Inkwell(),
    ));

class Inkwell extends StatelessWidget {
  const Inkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell Button"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            print("Tapped on container");
          },
          onDoubleTap: () {
            print("double tapped");
          },
          onLongPress: () {
            print("long press");
          },
          child: Container(
            width: 100,
            height: 200,
            color: Colors.blue,
            child: InkWell(
              child: Text(
                "Click",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                print("Tapped text");
              },
            ),
          ),
        ),
      ),
    );
  }
}
