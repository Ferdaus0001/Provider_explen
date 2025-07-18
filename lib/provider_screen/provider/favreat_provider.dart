import 'package:flutter/material.dart';

class FavratProvider with ChangeNotifier {
  final List<int> _selatFavratIcon = [];

  List<int> get selectedItem => _selatFavratIcon;

  void getSeleatIcon(int value) {
    if (_selatFavratIcon.contains(value)) {
      _selatFavratIcon.remove(value);
    } else {
      _selatFavratIcon.add(value);
    }
    notifyListeners();
  }
}
