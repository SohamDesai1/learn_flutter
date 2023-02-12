// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:learn/components/butoon.dart';

void main() => runApp(const MaterialApp(
      home: CustomWidget(),
    ));

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widget"),
      ),
      body: Center(
        child: SizedBox(
          width: 110,
          child: Column(
            children: [
              Button(
                btnName: 'Login',
                icon: Icon(Icons.login_rounded),
                bgColor: Colors.amberAccent,
                callback: () => print("Logged in"),
              ),
              Button(
                btnName: 'Submit',
                icon: Icon(Icons.arrow_forward_sharp),
                bgColor: Colors.redAccent,
                callback: () => print("Logged in"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
