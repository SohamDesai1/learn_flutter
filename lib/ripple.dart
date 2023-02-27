// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ripple(),
    ));

class Ripple extends StatefulWidget {
  const Ripple({super.key});

  @override
  State<Ripple> createState() => _RippleState();
}

class _RippleState extends State<Ripple> with SingleTickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _actrl;

  var list = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    super.initState();

    _actrl = AnimationController(vsync: this, duration: Duration(seconds: 4), lowerBound: 0.5);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_actrl);

    _actrl.addListener(() {});
    _actrl.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ripple Effect"),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: list
              .map((radius) => Container(
                    width: radius * _animation.value,
                    height: radius * _animation.value,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.cyanAccent
                            .withOpacity(1.0 - _animation.value)),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
