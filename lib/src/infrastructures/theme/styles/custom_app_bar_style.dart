import 'package:flutter/material.dart';

import '../custom_theme.dart';
import 'text_style.dart';

class CustomAppbarStyle {
  CustomAppbarStyle._();

  static AppBarTheme get getStyle => AppBarTheme(
        color: CustomTheme.shared.primaryColor,
        titleTextStyle: CustomTextStyle.getStyle.titleLarge?.copyWith(
          color: CustomTheme.shared.textColor.shade50,
        ),
        foregroundColor: CustomTheme.shared.textColor.shade50,
      );
}
