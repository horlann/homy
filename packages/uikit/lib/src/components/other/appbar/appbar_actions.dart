import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appbar_actions.freezed.dart';

@freezed
class AppbarActions with _$AppbarActions {
  const factory AppbarActions.customWidget(Widget widget) = _CustomWidget;

  const factory AppbarActions.actionSvgPicture(
    String path,
    VoidCallback callback, {
    Key? key,
    int? rotation,
  }) = _ActionSvgPicture;

  const factory AppbarActions.none() = _None;
}
