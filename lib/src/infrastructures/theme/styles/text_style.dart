import 'package:flutter/material.dart';

import '../custom_theme.dart';

class CustomTextStyle {
  CustomTextStyle._();

  static TextTheme get getStyle => TextTheme(
        displayLarge: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        displayMedium: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        displaySmall: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        headlineLarge: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        headlineMedium: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        headlineSmall: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        titleLarge: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        titleMedium: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        titleSmall: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        labelLarge: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        labelMedium: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        labelSmall: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        bodyLarge: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        bodyMedium: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
        bodySmall: TextStyle(
          color: CustomTheme.shared.textColor,
        ),
      );
}
