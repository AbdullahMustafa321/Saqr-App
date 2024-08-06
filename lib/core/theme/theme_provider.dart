import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqr_app/core/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themData => _themeData;
  set themData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleThem() {
    if (_themeData == lightMode) {
      themData = darkMode;
    } else {
      themData = lightMode;
    }
  }
}
