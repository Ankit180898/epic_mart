import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); //avoid creating instances

  // App Basic Colors
  static const primary = Color(0XFF4B68FF);
  static const second = Color(0XFFFFE24B);
  static const accent = Color(0XFFb0c7ff);

  // Text Colors
  static const textPrimary = Color(0XFF333333);
  static const textSecondary = Color(0XFF6c7570);
  static const textWhite = Colors.white;

  // Background Colors
  static const Color bgLight = Color(0XFFf6f6f6);
  static const Color bgDark = Color(0XFF272727);
  static const primaryBg = Color(0XFFf3f5ff);

  // Background Container Colors
  static const Color bgLightContainer = Color(0XFFf6f6f6);
  static Color bgDarkContainer = AppColors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0XFF4b68ff);
  static const Color buttonSecondary = Color(0XFF6c757d);
  static const Color buttonDisabled = Color(0XFFf3f5ff);

  // Border Colors
  static const Color borderPrimary = Color(0XFFd9d9d9);
  static const Color borderSecondary = Color(0XFFe6e6e6);

  // Error & Validations Colors
  static const Color error = Color(0XFFd32f2f);
  static const Color success = Color(0XFF388e3c);
  static const Color warning = Color(0XFFf57c00);
  static const Color info = Color(0XFF1976d2);

  // Neutral Shades
  static const Color black = Color(0XFF232323);
  static const Color darkerGrey = Color(0XFF4f4f4f);
  static const Color darkGrey = Color(0XFF939393);
  static const Color grey = Color(0XFFe0e0e0);
  static const Color softGrey = Color(0XFFf4f4f4);
  static const Color lightGrey = Color(0XFFf9f9f9);
  static const Color white = Color(0xFFffffff);
}
