// ignore_for_file: prefer_const_constructors,

import 'package:flutter/material.dart';

void main() {
  runApp(Gradients());
}

class Gradients extends StatelessWidget {
  const Gradients({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [
                        Colors.purpleAccent,
                        Colors.pinkAccent,

                      ]
                  ),
                ),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [
                        Colors.yellowAccent,
                        Colors.greenAccent,
                      ],
                  ),
                ),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  gradient: SweepGradient(
                      // ignore: prefer_const_literals_to_create_immutables
                      colors: [
                        Colors.cyanAccent,
                        Colors.lightBlue,

                      ]
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
