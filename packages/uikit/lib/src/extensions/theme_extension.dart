import 'package:flutter/material.dart';
import 'package:uikit/src/themes/theme.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension({
    required this.themeType,
    required this.lilacTitan,
    required this.blueIndigo,
    required this.greyAlto,
    required this.greyDark,
    required this.mainBlack,
    required this.beigeDustStorm,
    required this.beigeBizarre,
    required this.orangeOutrageous,
    required this.redCrimson,
    required this.backgroundBlue,
    required this.redOrange,
  });

  final ThemeType themeType;
  final Color lilacTitan;
  final Color blueIndigo;
  final Color greyAlto;
  final Color greyDark;
  final Color mainBlack;
  final Color beigeDustStorm;
  final Color beigeBizarre;
  final Color orangeOutrageous;
  final Color redCrimson;
  final Color backgroundBlue;
  final Color redOrange;

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? lilacTitan,
    Color? blueIndigo,
    Color? greyAlto,
    Color? greyDark,
    Color? mainBlack,
    Color? beigeDustStorm,
    Color? beigeBizarre,
    Color? orangeOutrageous,
    Color? redCrimson,
    Color? backgroundBlue,
    Color? redOrange,
  }) =>
      AppColorsExtension(
        themeType: themeType,
        lilacTitan: lilacTitan ?? this.lilacTitan,
        blueIndigo: blueIndigo ?? this.blueIndigo,
        greyAlto: greyAlto ?? this.greyAlto,
        greyDark: greyDark ?? this.greyDark,
        mainBlack: mainBlack ?? this.mainBlack,
        beigeDustStorm: beigeDustStorm ?? this.beigeDustStorm,
        beigeBizarre: beigeBizarre ?? this.beigeBizarre,
        orangeOutrageous: orangeOutrageous ?? this.orangeOutrageous,
        redCrimson: redCrimson ?? this.redCrimson,
        backgroundBlue: backgroundBlue ?? this.backgroundBlue,
        redOrange: redOrange ?? this.redOrange,
      );

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }
    return AppColorsExtension(
      themeType: themeType,
      lilacTitan: Color.lerp(lilacTitan, other.lilacTitan, t)!,
      blueIndigo: Color.lerp(blueIndigo, other.blueIndigo, t)!,
      greyAlto: Color.lerp(greyAlto, other.greyAlto, t)!,
      greyDark: Color.lerp(greyDark, other.greyDark, t)!,
      mainBlack: Color.lerp(mainBlack, other.mainBlack, t)!,
      beigeDustStorm: Color.lerp(beigeDustStorm, other.beigeDustStorm, t)!,
      beigeBizarre: Color.lerp(beigeBizarre, other.beigeBizarre, t)!,
      orangeOutrageous:
          Color.lerp(orangeOutrageous, other.orangeOutrageous, t)!,
      redCrimson: Color.lerp(redCrimson, other.redCrimson, t)!,
      backgroundBlue: Color.lerp(backgroundBlue, other.backgroundBlue, t)!,
      redOrange: Color.lerp(redOrange, other.redOrange, t)!,
    );
  }
}
