import 'package:flutter/material.dart';

import '../custom_theme.dart';

class CustomCardStyle {
  CustomCardStyle._();

  static CardTheme get getStyle => CardTheme(
        color: CustomTheme.shared.surfaceColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            CustomTheme.shared.borderRadiusSemiRound,
          ),
        ),
      );
}
