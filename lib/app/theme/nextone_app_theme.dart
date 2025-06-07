import 'package:flutter/material.dart';
import 'package:nextone/app/theme/nextone_colors.dart';
import 'package:nextone/app/theme/nextone_text_styles.dart';

class NextoneAppTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'Inter',
      scaffoldBackgroundColor: NextOneColors.background,
      primaryColor: NextOneColors.primary,
      colorScheme: const ColorScheme.dark().copyWith(
        primary: NextOneColors.primary,
        secondary: NextOneColors.background,
        surface: NextOneColors.surface,
        onPrimary: NextOneColors.textPrimary,
        onSecondary: NextOneColors.textSecondary,
        onSurface: NextOneColors.textPrimary,
        error: NextOneColors.error,
        onTertiary: NextOneColors.success,
      ),
      textTheme: const TextTheme(
          displayLarge: NextOneTextStyles.headline,
          headlineMedium: NextOneTextStyles.title,
          bodyLarge: NextOneTextStyles.bodyText1,
          labelLarge: NextOneTextStyles.bodyTextSecondary),
      appBarTheme: const AppBarTheme(
        backgroundColor: NextOneColors.surface,
        foregroundColor: NextOneColors.textPrimary,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: NextOneColors.primary,
        foregroundColor: NextOneColors.textPrimary,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      )),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: NextOneColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        labelStyle: const TextStyle(color: NextOneColors.textSecondary),
        hintStyle: const TextStyle(color: NextOneColors.textSecondary),
      ),
    );
  }
}
