// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Decorated(),
    ));

class Decorated extends StatelessWidget {
  const Decorated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: ListView(
        clipBehavior: Clip.none,
        children: [
          for (var i = 0; i <= 5; i++)
            Container(
              margin: EdgeInsets.all(8),
              padding: EdgeInsets.all(6),
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
                border: Border.all(color: Colors.redAccent, width: 1.3),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8, color: Colors.deepPurple, spreadRadius: 3)
                ],
              ),
            ),
        ],
      ),
    );
  }
}
