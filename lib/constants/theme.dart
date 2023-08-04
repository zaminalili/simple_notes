import 'package:flutter/material.dart';
import 'package:simple_notes/constants/colors.dart';

class AppTheme {
  final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryIconTheme: IconThemeData(color: AppColors.lightSecondaryColor),
      colorScheme: ColorScheme.light(
          primary: AppColors.lightPrimaryColor,
          secondary: AppColors.lightSecondaryColor,
          onBackground: AppColors.lightSecondaryColor));

  final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryIconTheme: IconThemeData(color: AppColors.darkSecondaryColor),
      colorScheme: ColorScheme.dark(
          primary: AppColors.darkPrimaryColor,
          secondary: AppColors.darkSecondaryColor,
          onBackground: AppColors.darkSecondaryColor));
}
