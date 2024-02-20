import 'package:flutter/material.dart';
import 'package:uikit/src/colors/dark_colors.dart';
import 'package:uikit/src/colors/light_colors.dart';
import 'package:uikit/src/extensions/fonts.dart';
import 'package:uikit/src/extensions/theme_extension.dart';

final class CustomAppTheme {
  static final light = ThemeData.light().copyWith(
    extensions: [_lightAppColors, _fonts],
  );

  static final _lightAppColors = AppColorsExtension(
    themeType: ThemeType.light,
    lilacTitan: LightColors.lilacTitan,
    blueIndigo: LightColors.blueIndigo,
    greyAlto: LightColors.greyAlto,
    greyDark: LightColors.greyDark,
    mainBlack: LightColors.mainBlack,
    beigeDustStorm: LightColors.beigeDustStorm,
    beigeBizarre: LightColors.beigeBizarre,
    orangeOutrageous: LightColors.orangeOutrageous,
    redCrimson: LightColors.redCrimson,
    backgroundBlue: LightColors.backgroundBlue,
    redOrange: LightColors.redOrange,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    extensions: [
      _darkAppColors,
      _fonts,
    ],
  );
  static final _fonts = AppFonts();

  static final _darkAppColors = AppColorsExtension(
    themeType: ThemeType.light,
    lilacTitan: DarkColors.lilacTitan,
    blueIndigo: DarkColors.blueIndigo,
    greyAlto: DarkColors.greyAlto,
    greyDark: DarkColors.greyDark,
    mainBlack: DarkColors.mainBlack,
    beigeDustStorm: DarkColors.beigeDustStorm,
    beigeBizarre: DarkColors.beigeBizarre,
    orangeOutrageous: DarkColors.orangeOutrageous,
    redCrimson: DarkColors.redCrimson,
    backgroundBlue: DarkColors.backgroundBlue,
    redOrange: DarkColors.redOrange,
  );

  static AppColorsExtension get darkColors => _darkAppColors;

  static AppColorsExtension get lightColors => _lightAppColors;
}

enum ThemeType { dark, light }
