import 'package:flutter/material.dart';
import 'package:flutter_rick_and_morty_app/core/constants/colors.dart';
import 'package:flutter_rick_and_morty_app/feature/utils/attributes.dart';

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
      cardTheme: _cardTheme(),
      textTheme: TextTheme(
        headlineSmall: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.normal,
          fontFamily: 'Marvel',
          color: _colorScheme.onPrimary,
        ),
        headlineMedium: TextStyle(
          fontSize: 30,
          fontStyle: FontStyle.normal,
          fontFamily: 'Marvel',
          color: _colorScheme.onPrimary,
        ),
      ),
    );
  }

  CardTheme _cardTheme() {
    return CardTheme(
      elevation: Attributes().smallElevation,
      color: _colorScheme.primary,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Attributes().borderRadius)),
    );
  }
}
