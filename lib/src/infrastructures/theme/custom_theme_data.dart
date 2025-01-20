import 'package:flutter/material.dart';

import 'custom_theme.dart';

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

        fontFamily: CustomTheme.shared.fontFamilyPrimary,
      );
}
