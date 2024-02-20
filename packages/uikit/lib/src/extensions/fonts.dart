import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts extends ThemeExtension<AppFonts> {
  List<List<TextStyle>> get fonts => [
        titleFonts,
        paragraphFonts,
        captionFonts,
      ];

  List<TextStyle> get titleFonts => [
        title36StrongBold,
        title28StrongBold,
        title24StrongBold,
        title20StrongBold,
        title16StrongBold,
        title36NormalRegular,
        title28StrongBold,
        title24StrongBold,
        title20StrongBold,
        title16StrongBold,
        title36Light,
        title28Light,
      ];

  List<TextStyle> get paragraphFonts => [
        paragraph16StrongMedium,
        paragraph16NormalRegular,
        paragraph14StrongMedium,
        paragraph13StrongMedium,
        paragraph14NormalRegular,
        paragraph13NormalRegular,
      ];

  List<TextStyle> get captionFonts => [
        caption13StrongMedium,
        caption12StrongMedium,
        caption10StrongMedium,
        caption13NormalRegular,
        caption12NormalRegular,
        caption10NormalRegular,
      ];

  ///[TITLE]
  final TextStyle title36StrongBold = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.w700,
    height: 1,
    letterSpacing: 0.36,
  );
  final TextStyle title28StrongBold = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.14,
    letterSpacing: 0.364,
  );
  final TextStyle title24StrongBold = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.16,
    letterSpacing: 0.2,
  );
  final TextStyle title20StrongBold = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 0.2,
  );
  final TextStyle title16StrongBold = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.25,
    letterSpacing: -0.32,
  );

  final TextStyle title36NormalRegular = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    height: 1,
    letterSpacing: 0.36,
  );
  final TextStyle title28NormalRegular = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    height: 1.14,
    letterSpacing: 0.364,
  );
  final TextStyle title24NormalRegular = GoogleFonts.roboto(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    height: 1.16,
    letterSpacing: 0.2,
  );
  final TextStyle title20NormalRegular = GoogleFonts.roboto(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 1.2,
    letterSpacing: 0.2,
  );
  final TextStyle title16NormalRegular = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.25,
    letterSpacing: -0.32,
  );
  final TextStyle title36Light = GoogleFonts.roboto(
    fontSize: 36,
    fontWeight: FontWeight.w300,
    height: 1,
    letterSpacing: 0.36,
  );
  final TextStyle title28Light = GoogleFonts.roboto(
    fontSize: 28,
    fontWeight: FontWeight.w300,
    height: 1.14,
    letterSpacing: 0.364,
  );

  ///[PARAGRAPH]

  final TextStyle paragraph16StrongMedium = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: -0.32,
  );
  final TextStyle paragraph16NormalRegular = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.71,
    letterSpacing: -0.154,
  );
  final TextStyle paragraph14StrongMedium = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.41,
    letterSpacing: -0.154,
  );
  final TextStyle paragraph13StrongMedium = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.23,
    letterSpacing: -0.078,
  );
  final TextStyle paragraph14NormalRegular = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.71,
    letterSpacing: -0.154,
  );
  final TextStyle paragraph13NormalRegular = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.23,
    letterSpacing: -0.078,
  );

  ///[CAPTION]

  final TextStyle caption13StrongMedium = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.23,
    letterSpacing: 0,
  );

  final TextStyle caption12StrongMedium = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.33,
    letterSpacing: 0,
  );
  final TextStyle caption10StrongMedium = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.20,
    letterSpacing: 0,
  );

  final TextStyle caption13NormalRegular = GoogleFonts.roboto(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.23,
    letterSpacing: 0,
  );

  final TextStyle caption12NormalRegular = GoogleFonts.roboto(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0.5,
  );
  final TextStyle caption10NormalRegular = GoogleFonts.roboto(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.20,
    letterSpacing: 0,
  );

  @override
  ThemeExtension<AppFonts> copyWith() => AppFonts();

  @override
  ThemeExtension<AppFonts> lerp(
    covariant ThemeExtension<AppFonts>? other,
    double t,
  ) {
    if (other is! AppFonts) {
      return this;
    }
    return AppFonts();
  }
}
