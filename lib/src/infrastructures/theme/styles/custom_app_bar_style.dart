import 'package:flutter/material.dart';

import '../custom_theme.dart';

class CustomAppbarStyle {
  CustomAppbarStyle._();

  static AppBarTheme get getStyle => AppBarTheme(
        color: CustomTheme.shared.primaryColor,
        foregroundColor: CustomTheme.shared.textColor.shade50,
      );
}
