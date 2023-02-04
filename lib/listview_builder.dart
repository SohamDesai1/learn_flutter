// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: ListViewBuilder(),
    ));

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    var arr = ['Java', 'Python', 'C++', 'Javascript', "Rust"];
    return Scaffold(
      appBar: AppBar(
        title: Text("list view builder"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              arr[index],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
          
        },
        itemCount: arr.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
