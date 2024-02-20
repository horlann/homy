import 'package:flutter/material.dart';
import 'package:uikit/src/extensions/fonts.dart';
import 'package:uikit/src/extensions/theme_extension.dart';
import 'package:uikit/src/themes/theme.dart';

extension AppFontsExtension on ThemeData {
  /// Usage example: Theme.of(context).textTheme
  AppFonts get appFonts => extension<AppFonts>() ?? AppFonts();
}

extension ThemeGetter on BuildContext {
  // Usage example: `context.theme`
  AppColorsExtension get appColors => Theme.of(this).appColors;

  ThemeData get theme => Theme.of(this);
}

extension AppThemeExtension on ThemeData {
  /// Usage example: Theme.of(context).appColorsDeprecated;

  AppColorsExtension get appColors =>
      extension<AppColorsExtension>() ?? CustomAppTheme.lightColors;
}
