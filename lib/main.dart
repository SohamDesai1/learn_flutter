// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:learn/splash_screen.dart';

void main() => runApp(MaterialApp(
      home: Demo(),
    ));

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(child: Text("Home")),
    );
  }
}
