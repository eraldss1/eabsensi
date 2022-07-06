import 'package:flutter/material.dart';

class WartaColors {
  static Color primary100() {
    return const Color(0xFF5089C6);
  }

  static Color primary200() {
    return const Color(0xFF035397);
  }

  static Color primary300() {
    return const Color(0xFF001E6C);
  }

  static Color primary300op(double opacity) {
    return Color.fromRGBO(0, 30, 108, opacity);
  }

  static Color primary400() {
    return const Color(0xFFFFAA4C);
  }

  static Color primary500() {
    return const Color(0xFFff921a);
  }

  static const MaterialColor blue = MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );
  static const int _bluePrimaryValue = 0xFF035397;
}
