// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Rich_Text(),
    ));

class Rich_Text extends StatelessWidget {
  const Rich_Text({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rich Text"),
      ),
      body: RichText(
        text: TextSpan(
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(text: "Hello "),
              TextSpan(
                text: "World",
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                    color: Colors.cyan),
              ),
            ]),
      ),
    );
  }
}
