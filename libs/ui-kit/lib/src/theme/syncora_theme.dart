import 'package:flutter/material.dart';

class SyncoraTheme {
  static const Color primaryNavy = Color(0xFF0F172A);
  static const Color accentIndigo = Color(0xFF6366F1);
  static const Color surfaceGlass = Color(0x1F1E293B);
  static const Color bgDark = Color(0xFF020617);
  static const Color textPrimary = Color(0xFFF8FAFC);
  static const Color textSecondary = Color(0xFF94A3B8);

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: bgDark,
      colorScheme: const ColorScheme.dark(
        primary: accentIndigo,
        surface: primaryNavy,
        onSurface: textPrimary,
      ),
      cardTheme: CardThemeData(
        color: surfaceGlass,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0x336366F1), width: 1),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryNavy,
        elevation: 0,
        centerTitle: false,
      ),
    );
  }
}
