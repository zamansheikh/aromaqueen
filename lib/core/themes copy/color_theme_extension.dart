import 'package:flutter/material.dart';
import 'color_constants.dart';

extension ColorTheme on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  Color get primaryColor =>
      isDarkMode ? ColorConstants.darkPrimary : ColorConstants.lightPrimary;

  Color get secondaryColor =>
      isDarkMode ? ColorConstants.darkSecondary : ColorConstants.lightSecondary;

  Color get backgroundColor =>
      isDarkMode
          ? ColorConstants.darkBackground
          : ColorConstants.lightBackground;

  Color get textColor =>
      isDarkMode ? ColorConstants.darkText : ColorConstants.lightText;

  Color get errorColor =>
      isDarkMode ? ColorConstants.darkError : ColorConstants.lightError;

  Color get appBarColor =>
      isDarkMode ? ColorConstants.darkAppBar : ColorConstants.lightAppBar;

  Color get buttonColor =>
      isDarkMode ? ColorConstants.darkButton : ColorConstants.lightButton;

  Color get disabledButtonColor =>
      isDarkMode
          ? ColorConstants.darkDisabledButton
          : ColorConstants.lightDisabledButton;
}
