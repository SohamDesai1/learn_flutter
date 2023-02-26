// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeroAnimate(),
    ));

class HeroAnimate extends StatefulWidget {
  const HeroAnimate({super.key});

  @override
  State<HeroAnimate> createState() => _HeroAnimateState();
}

class _HeroAnimateState extends State<HeroAnimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Detail()));
          },
          child: Hero(
              tag: "image",
              child: Image.asset(
                "assets/images/image.jpg",
                width: 400,
                height: 150,
              )),
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: "image",
        child: Image.asset(
          "assets/images/image.jpg",
        ),
        
      ),
    );
  }
}
