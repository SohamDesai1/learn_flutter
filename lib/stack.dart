// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: StackView(),
    ));

class StackView extends StatefulWidget {
  const StackView({super.key});

  @override
  State<StackView> createState() => _StackViewState();
}

class _StackViewState extends State<StackView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: SizedBox(
        height: 300,
        width: 300,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
            ),
            Positioned(
              top: 20,
              left: 30,
              child: Container(
                width: 220,
                height: 220,
                color: Colors.cyan,
              ),
            ),
            Positioned(
              top: 50,
              left: 60,
              child: Container(
                width: 220,
                height: 220,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
