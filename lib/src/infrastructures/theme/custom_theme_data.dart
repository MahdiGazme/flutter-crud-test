import 'package:flutter/material.dart';

import 'custom_theme.dart';
import 'styles/custom_app_bar_style.dart';
import 'styles/custom_card_style.dart';

class CustomThemeData {
  CustomThemeData._();

  static ThemeData getTheme(final BuildContext context) => ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          error: CustomTheme.shared.dangerColor,
          primary: CustomTheme.shared.primaryColor,
          secondary: CustomTheme.shared.secondaryColor,
          surface: CustomTheme.shared.backgroundColor,
        ),
        cardTheme: CustomCardStyle.getStyle,
        appBarTheme: CustomAppbarStyle.getStyle,
        fontFamily: CustomTheme.shared.fontFamilyPrimary,
      );
}
