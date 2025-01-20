import 'package:flutter/material.dart';

class CustomTheme {
  CustomTheme._();

  static final shared = CustomTheme._();

  MaterialColor get primaryColor => _lightPrimaryColor();

  MaterialColor _lightPrimaryColor() => const MaterialColor(0xff0183FF, {
        50: Color(0xffe6f3ff),
        100: Color(0xffcce6ff),
        200: Color(0xffb3daff),
        300: Color(0xff99cdff),
        400: Color(0xff99cdff),
        500: Color(0xff80c1ff),
        600: Color(0xff67b5ff),
        700: Color(0xff4da8ff),
        800: Color(0xff349cff),
        900: Color(0xff1a8fff),
      });

  MaterialColor get textColor => const MaterialColor(0xFF020202, {
        50: Color(0xFFFFFFFF),
        100: Color(0xFFF4F4F4),
        200: Color(0xFFD3D3DB),
        300: Color(0xFFABABB6),
        400: Color(0xFF747482),
        500: Color(0xFF56565F),
        600: Color(0xFF2C2C38),
        700: Color(0xFF19191F),
        800: Color(0xFF0D0D11),
        900: Color(0xFF0A0A0C),
      });

  Color get secondaryColor => const Color(0xFFdae1ff);

  Color get buttonColor => const Color(0xFF2675FF);

  Color get secondaryButtonColor => const Color(0xFFB9D1D7);

  Color get infoColor => const Color(0xFF5A5C98);

  Color get successColor => const Color(0xFF00D260);

  Color get warningColor => const Color(0xFFFFBB0D);

  Color get dangerColor => const Color(0xFFFF0000);

  Color get disabledColor => const Color(0xFFA4A4A4);

  Color get backgroundColor => const Color(0xFFE1E8EA);

  Color get surfaceColor => const Color(0xFFF4F4F4);

  final String fontFamilyPrimary = 'Yekan-bakh';
  final double borderRadiusRectangle = 2.0;
  final double borderRadiusCircular = 100;
  final double borderRadiusRound = 20.0;
  final double borderRadiusSemiRound = 11.0;
}
