import 'package:flutter/material.dart';

class SyncoraSpacing {
  static const double paddingCard = 20.0;
  static const double marginPage = 24.0;
  static const double gutterGrid = 16.0;
  static const double densityCompact = 8.0;
  static const double densityGenerous = 32.0;
  static const double borderRadiusLg = 16.0;
  static const double borderRadiusMd = 12.0;
  static const double borderRadiusSm = 8.0;
}

class SyncoraTheme {
  // Material Design 3 Semantic Tokens extracted from code.html Tailwind configs
  static const Color primary = Color(0xFF6366F1); // Indigo Accent
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFF0F172A); // Navy Surface
  static const Color onSurface = Color(0xFFF8FAFC); // Text Primary
  static const Color surfaceContainerHighest = Color(0xFF1E293B); // Slate Surface Container
  static const Color background = Color(0xFF020617); // Deep Dark Background
  static const Color outlineVariant = Color(0xFF334155); // Border Variant
  static const Color textSecondary = Color(0xFF94A3B8);
  static const Color textMuted = Color(0xFF64748B);
  static const Color accentTeal = Color(0xFF14B8A6);
  static const Color accentAmber = Color(0xFFF59E0B);
  static const Color accentRose = Color(0xFFF43F5E);

  // Backward-compatible token aliases for existing widgets
  static const Color primaryNavy = surface;
  static const Color accentIndigo = primary;
  static const Color surfaceGlass = surfaceContainerHighest;
  static const Color bgDark = background;

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: background,
      colorScheme: const ColorScheme.dark(
        primary: primary,
        onPrimary: onPrimary,
        surface: surface,
        onSurface: onSurface,
        surfaceContainerHighest: surfaceContainerHighest,
        outlineVariant: outlineVariant,
      ),
      cardTheme: CardThemeData(
        color: surfaceContainerHighest,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SyncoraSpacing.borderRadiusLg),
          side: const BorderSide(color: outlineVariant, width: 1),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: surface,
        elevation: 0,
        centerTitle: false,
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: onSurface),
        headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: onSurface),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: onSurface),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: onSurface),
        bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: textSecondary),
        labelLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: primary, letterSpacing: 1.1),
      ),
    );
  }
}
