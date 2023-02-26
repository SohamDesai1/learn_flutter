// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CrossFade(),
    ));

class CrossFade extends StatefulWidget {
  const CrossFade({super.key});

  @override
  State<CrossFade> createState() => _CrossFadeState();
}

class _CrossFadeState extends State<CrossFade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.amber,
                  width: 200,
                  height: 200,
                ),
                secondChild: Container(
                  color: Colors.cyan,
                  width: 200,
                  height: 200,
                ),
                sizeCurve: Curves.bounceIn,
                firstCurve: Curves.decelerate,
                secondCurve: Curves.bounceIn,
                crossFadeState: CrossFadeState.showSecond,
                duration: Duration(seconds: 4))
          ],
        ),
      ),
    );
  }
}
