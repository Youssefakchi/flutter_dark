import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  Color _primaryColor = Colors.blue;
  Color _backgroundColor = Colors.white;

  ThemeMode get themeMode => _themeMode;
  Color get primaryColor => _primaryColor;
  Color get backgroundColor => _backgroundColor;

  void toggleTheme() {
    if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
      _backgroundColor = Colors.black; // Couleur de fond pour le mode sombre
    } else {
      _themeMode = ThemeMode.light;
      _backgroundColor = Colors.white; // Couleur de fond pour le mode clair
    }
    notifyListeners();
  }

  void changePrimaryColor(Color color) {
    _primaryColor = color;
    notifyListeners();
  }
}
