// text_fild_provider.dart
import 'package:flutter/material.dart';

class TextFildProvider with ChangeNotifier {
  String _email = '';
  String _passwrod = '';
  String _number = '';

  String get email => _email;
  String get password => _passwrod;
  String get number => _number;

  void setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  void setPasswrod(String value) {
    _passwrod = value;
    notifyListeners();
  }

  void setNumber(String value) {
    _number = value;
    notifyListeners();
  }
}
