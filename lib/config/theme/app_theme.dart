import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 206, 18, 18);

const List<Color> _ColorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _ColorThemes.length,
            'Colors must be between 0 and ${_ColorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _ColorThemes[selectedColor]);
  }
}
