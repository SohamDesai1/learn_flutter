// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Button(
        btnName: '',
      ),
    ));

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.btnName,
      this.icon,
      this.bgColor,
      this.callback});

  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final VoidCallback? callback;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: icon != null
          ? Row(
              children: [
                icon!,
                SizedBox(
                  width: 3,
                ),
                Text(btnName)
              ],
            )
          : Text(btnName),
    );
  }
}
