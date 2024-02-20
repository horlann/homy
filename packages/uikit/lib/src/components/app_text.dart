import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
    String this.text, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  }) : textSpans = null;

  const AppText.rich(
    this.textSpans, {
    super.key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  }) : text = null;

  final String? text;
  final List<RichTextPieceModel>? textSpans;
  final TextStyle? style;
  final StrutStyle? strutStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final bool? softWrap;
  final TextOverflow? overflow;
  final double? textScaleFactor;
  final int? maxLines;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) {
    if (text != null) {
      return Text(
        text!,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
      );
    } else if (textSpans != null) {
      return RichText(
        strutStyle: strutStyle,
        textDirection: textDirection,
        locale: locale,
        maxLines: maxLines,
        text: TextSpan(
          style: style,
          children: textSpans!
              .map<TextSpan>(
                (part) => TextSpan(
                  text: part.text,
                  style: part.style,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      part.onPressed?.call();
                    },
                ),
              )
              .toList(),
        ),
      );
    } else {
      return const Placeholder();
    }
  }
}

class RichTextPieceModel {
  const RichTextPieceModel({
    required this.text,
    this.style,
    this.onPressed,
  });

  final String text;
  final TextStyle? style;
  final VoidCallback? onPressed;
}
