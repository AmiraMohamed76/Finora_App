import 'package:flutter/material.dart';

abstract final class AppColors {
  // Brand colors
  static const Color primary = Color(0xFF1E3D34);
  static const Color secondary = Color(0xFF7A9B8F);
  static const Color accent = Color(0xFFD4A373);

  // Light theme
  static const Color background = Color(0xFFF9f6F0);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFE9DCC8);

  // Dark theme
  static const Color darkBackground = Color(0xFF101C18);
  static const Color darkSurface = Color(0xFF1B2A25);
  static const Color darkSurfaceVariant = Color(0xFF293C34);

  // Text
  static const Color textPrimary = Color(0xFF1E3D34);
  static const Color textSecondary = Color(0xFF64776F);
  static const Color textDisabled = Color(0xFF9AA7A1);

  static const Color darkTextPrimary = Color(0xFFF8F7F3);
  static const Color darkTextSecondary = Color(0xFFB7C7BF);

  // Transaction colors
  static const Color income = Color(0xFF278567);
  static const Color expense = Color(0xFFD95D52);
  static const Color warning = Color(0xFFE6A23C);
  static const Color info = Color(0xFF4C83C3);

  // Utility
  static const Color textFieldBackground = Color(0xFFFCF9F3);
  static const Color textFieldBorder = Color(0xFFCFCBCA);
  static const Color textFieldHintColor = Color(0xFF7B858E);
  static const Color divider = Color(0xFFE7E5DF);
  static const Color darkDivider = Color(0xFF35463F);

  static const Color transparent = Colors.transparent;
}