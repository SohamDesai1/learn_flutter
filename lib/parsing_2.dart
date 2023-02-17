// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';


class Parsing2 extends StatelessWidget {
  var data;
  Parsing2(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('$data'),
      ),
    );
  }
}
