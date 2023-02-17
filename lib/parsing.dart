// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:learn/parsing_2.dart';

void main() => runApp(MaterialApp(
      home: Parsing(),
    ));

class Parsing extends StatelessWidget {
  var name = TextEditingController();

  Parsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: name,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Parsing2(name.text.toString()),
                  ),
                );
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
