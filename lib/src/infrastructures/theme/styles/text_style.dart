import 'package:flutter/material.dart';

import '../custom_theme.dart';

class CustomTextStyle {
  CustomTextStyle._();

  static TextTheme get getStyle => TextTheme(
        displayLarge: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
        displaySmall: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        headlineLarge: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
        headlineMedium: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
        headlineSmall: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
        titleLarge: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 22,
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        labelSmall: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w400,

        ),
        bodyMedium: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: CustomTheme.shared.textColor,
          fontFamily: CustomTheme.shared.fontFamilyPrimary,
          fontSize: 14,
          fontWeight: FontWeight.w400,

        ),
      );
}
