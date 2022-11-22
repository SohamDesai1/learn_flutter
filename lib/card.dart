// ignore_for_file: implementation_imports, prefer_const_constructors

import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
      home: Lists(),
    ));

class Lists extends StatefulWidget {
  const Lists({super.key});

  @override
  State<Lists> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Lists> {
  List<String> items = ['JAVA', 'Python', 'Javascript', 'ReactJS'];
  Widget listing(lists){
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(children: [
        Text(
          lists,
          style:TextStyle(fontSize: 20,
          color: Colors.amberAccent) ,
        )
      ]),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(children: items.map((e) =>listing(e)).toList()),
    );
  }
}
