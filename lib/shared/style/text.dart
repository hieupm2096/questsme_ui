import 'package:flutter/material.dart';
import 'package:questsme_ui/gen/fonts.gen.dart';
import 'package:questsme_ui/shared/style/style.dart';

class AppTextStyle {
  const AppTextStyle();

  TextStyle get rowdies => TextStyle(
        fontFamily: FontFamily.rowdies,
        color: $style.colors.text,
        fontStyle: FontStyle.normal,
        decoration: TextDecoration.none,
        letterSpacing: 0,
      );

  TextStyle get plusJakartaSans => TextStyle(
        fontFamily: FontFamily.plusJakartaSans,
        decoration: TextDecoration.none,
        fontStyle: FontStyle.normal,
        color: $style.colors.text,
        letterSpacing: 0,
      );

  TextStyle get title30 => rowdies.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        height: 38 / 30,
      );

  TextStyle get title28 => rowdies.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.w400,
        height: 36 / 28,
      );

  TextStyle get title24 => rowdies.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        height: 32 / 24,
      );

  TextStyle get title20 => rowdies.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        height: 28 / 20,
      );

  TextStyle get title18 => rowdies.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        height: 24 / 18,
      );

  TextStyle get title16 => plusJakartaSans.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
      );

  TextStyle get title14 => plusJakartaSans.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 22 / 14,
      );

  TextStyle get title14Bold => plusJakartaSans.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        height: 22 / 14,
      );

  TextStyle get button17 => rowdies.copyWith(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        height: 24 / 17,
      );

  TextStyle get body16 => plusJakartaSans.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 24 / 16,
      );

  TextStyle get body14 => plusJakartaSans.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 22 / 14,
      );

  TextStyle get button14 => rowdies.copyWith(
        fontSize: 14,
        height: 22 / 14,
      );

  TextStyle get caption12 => plusJakartaSans.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        height: 16 / 12,
      );

  TextStyle get note12 => plusJakartaSans.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
      );

  TextStyle get note10 => plusJakartaSans.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        height: 16 / 10,
      );
}
