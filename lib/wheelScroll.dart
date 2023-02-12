// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: WheelScroll(),
    ));

class WheelScroll extends StatefulWidget {
  const WheelScroll({super.key});

  @override
  State<WheelScroll> createState() => _WheelScrollState();
}

class _WheelScrollState extends State<WheelScroll> {
  var arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3D List View'),
      ),
      body: Center(
          child: ListWheelScrollView(
        itemExtent: 200,
        children: arr.map((e) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              width: double.infinity,
              color: Colors.amber,
              child: Center(child: Text('$e')),
            ),
          );
        }).toList(),
      )),
    );
  }
}
