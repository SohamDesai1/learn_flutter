// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Demo(),
    ));

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button and Icons'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => {},
          icon: Icon(
            Icons.search
          ), label: Text('Search'),
        ),
        // child: IconButton(
        //   onPressed: () => {print("Clicked")},
        //   icon: Icon(Icons.access_alarm),
        //   color: Colors.red,
        // ),
      ),
    );
  }
}
