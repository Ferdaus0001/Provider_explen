import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;

  void setValue(val) {
    _value = val;
    notifyListeners();
  }

  // Removed incorrect ChangeNotifier() call
}
