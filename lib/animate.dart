// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Animate(),
    ));

class Animate extends StatefulWidget {
  const Animate({super.key});

  @override
  State<Animate> createState() => _AnimateState();
}

class _AnimateState extends State<Animate> {
  var _width = 200.0;
  var _height = 200.0;
  var _color = Colors.amber;
  var _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _opacity,
              child: AnimatedContainer(
                duration: Duration(seconds: 4),
                width: _width,
                height: _height,
                color: _color,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _width = 300;
                _height = 300;
                _color = Colors.blue;
                setState(() {});
              },
              child: Text("Animate"),
            ),
            ElevatedButton(
              onPressed: () {
                _opacity = 0.0;
                setState(() {});
              },
              child: Text("Vanish"),
            )
          ],
        ),
      ),
    );
  }
}
