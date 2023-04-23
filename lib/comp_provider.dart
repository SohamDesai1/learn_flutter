import 'package:flutter/material.dart';

class NameProvider extends ChangeNotifier {
  List names = [];

  void add(value) {
    names.add(value);
    print(names);
    notifyListeners();
  }
}
