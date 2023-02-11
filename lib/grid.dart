// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Gridview(),
    ));

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: //GridView.count(
          //   crossAxisCount: 2,
          //   crossAxisSpacing: 13,
          //   mainAxisSpacing: 12,
          //   children: [
          //     Container(
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       color: Colors.amber,
          //     ),
          //     Container(
          //       color: Colors.amber,
          //     ),
          //   ],
          // ),
          GridView.extent(
        maxCrossAxisExtent: 100,
        crossAxisSpacing: 10,
        mainAxisSpacing: 13,
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
