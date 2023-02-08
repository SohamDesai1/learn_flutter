// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Date_picker(),
    ));

class Date_picker extends StatefulWidget {
  const Date_picker({super.key});

  @override
  State<Date_picker> createState() => _Date_pickerState();
}

class _Date_pickerState extends State<Date_picker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Date",
              style: TextStyle(fontSize: 25),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? date_picker = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2024));
                },
                child: Text("show")),
          ],
        ),
      ),
    );
  }
}
