// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Animation_tech(),
    ));

class Animation_tech extends StatefulWidget {
  const Animation_tech({super.key});

  @override
  State<Animation_tech> createState() => _Animation_techState();
}

class _Animation_techState extends State<Animation_tech> {
  var _width = 200.0;
  var _height = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              color: Colors.amberAccent,
              width: _width,
              height: _height,
              duration: Duration(seconds: 2),
              curve: Curves.bounceOut,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _height = 300;
                  _width = 300;
                });
              },
              child: Text("Vanish"),
            )
          ],
        ),
      ),
    );
  }
}
