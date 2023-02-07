// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MaterialApp(
      home: Date_Time(),
    ));

class Date_Time extends StatelessWidget {
  const Date_Time({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date and Time"),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              "Current Time: ${DateFormat("Hms").format(DateTime.now())}",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            child: Text(
              "Current Date: ${DateFormat("yMMMd").format(DateTime.now())}",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            child: Text(
              "Current: ${DateFormat("yMMMMEEEEd").format(DateTime.now())}",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
