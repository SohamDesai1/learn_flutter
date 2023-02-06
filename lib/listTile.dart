// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: List_Tile(),
    ));

class List_Tile extends StatelessWidget {
  const List_Tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telephone Directory"),
      ),
      body: ListView(
        children: [
          for (var i=0;i<5;)
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.brown,
              child: Text("S"),
            ),
            subtitle: Text("98XXXXXXX"),
          ),
        ],
      ),
    );
  }
}
