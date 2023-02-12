// ignore_for_file: prefer_const_constructors, avoid_print, camel_case_types

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Range_Slider(),
    ));

class Range_Slider extends StatefulWidget {
  const Range_Slider({super.key});

  @override
  State<Range_Slider> createState() => _Range_SliderState();
}

class _Range_SliderState extends State<Range_Slider> {
  RangeValues value = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels label =
        RangeLabels(value.start.toString(), value.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Slider"),
      ),
      body: Center(
        child: RangeSlider(
          values: value,
          labels: label,
          divisions: 10,
          max: 100,
          onChanged: (newValue) {
            value = newValue;
            print('${newValue.start},${newValue.end}');
            setState(() {});
          },
        ),
      ),
    );
  }
}
