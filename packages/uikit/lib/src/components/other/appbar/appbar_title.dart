import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_title.freezed.dart';

@freezed
class AppbarTitle with _$AppbarTitle {
  const factory AppbarTitle.customWidget(Widget widget) = _CustomWidget;

  const factory AppbarTitle.defaultText(String text, {Key? key}) = _DefaultText;

  const factory AppbarTitle.none() = _None;
}
