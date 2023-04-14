import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/constants/colors.dart';

ColorScheme _colorScheme = const ColorScheme(
  background: CustomColors.background,
  onBackground: CustomColors.primary,
  surface: CustomColors.primary,
  onSurface: CustomColors.primary,
  brightness: Brightness.light,
  primary: CustomColors.primary,
  onPrimary: CustomColors.onPrimary,
  secondary: CustomColors.secondry,
  onSecondary: CustomColors.onSecondry,
  error: CustomColors.error,
  onError: CustomColors.error,
);

class CustomLightTheme {
  late final ThemeData themeData;

  CustomLightTheme() {
    themeData = ThemeData.light().copyWith(
      colorScheme: _colorScheme,
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.normal,
          fontFamily: 'Marvel',
          color: _colorScheme.onPrimary,
        ),
      ),
    );
  }
}
