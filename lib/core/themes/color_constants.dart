import 'package:flutter/material.dart';

class ColorConstants {
  // Static Colors
  static const Color lightPrimary = Color(0xFF6200EE);
  static const Color lightSecondary = Color(0xFF03DAC6);
  static const Color lightBackground = Color(0xFFF5F5F5);
  static const Color lightText = Color(0xFF000000);
  static const Color lightError = Color(0xFFB00020);
  static const Color lightAppBar = Color(0xFFFFFFFF);
  static const Color lightButton = Color(0xFF6200EE);
  static const Color lightDisabledButton = Color(0xFFB0BEC5);

  static const Color darkPrimary = Color(0xFFBB86FC);
  static const Color darkSecondary = Color(0xFF03DAC6);
  static const Color darkBackground = Color(0xFF121212);
  static const Color darkText = Color(0xFFFFFFFF);
  static const Color darkError = Color(0xFFCF6679);
  static const Color darkAppBar = Color(0xFF1F1F1F);
  static const Color darkButton = Color(0xFFBB86FC);
  static const Color darkDisabledButton = Color(0xFFB0BEC5);

  // Getter-based Color Switching

  static bool _isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static Color primary(BuildContext context) =>
      _isDark(context) ? darkPrimary : lightPrimary;

  static Color secondary(BuildContext context) =>
      _isDark(context) ? darkSecondary : lightSecondary;

  static Color background(BuildContext context) =>
      _isDark(context) ? darkBackground : lightBackground;

  static Color text(BuildContext context) =>
      _isDark(context) ? darkText : lightText;

  static Color error(BuildContext context) =>
      _isDark(context) ? darkError : lightError;

  static Color appBar(BuildContext context) =>
      _isDark(context) ? darkAppBar : lightAppBar;

  static Color button(BuildContext context) =>
      _isDark(context) ? darkButton : lightButton;

  static Color disabledButton(BuildContext context) =>
      _isDark(context) ? darkDisabledButton : lightDisabledButton;
}
