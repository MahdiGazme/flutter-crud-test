import 'package:flutter/material.dart';

import '../custom_theme.dart';

class CustomTextFieldStyle {
  CustomTextFieldStyle._();

  static InputDecorationTheme get getStyle => InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            CustomTheme.shared.borderRadiusSemiRound,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: CustomTheme.shared.dangerColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(
            CustomTheme.shared.borderRadiusSemiRound,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(
            CustomTheme.shared.borderRadiusSemiRound,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: CustomTheme.shared.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(
            CustomTheme.shared.borderRadiusSemiRound,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: CustomTheme.shared.dangerColor, width: 2),
          borderRadius: BorderRadius.circular(
            CustomTheme.shared.borderRadiusSemiRound,
          ),
        ),
        fillColor: CustomTheme.shared.textColor.shade200,
        filled: true,
      );
}
