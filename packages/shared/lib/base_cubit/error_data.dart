import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_data.freezed.dart';

//TODO: implement translates
@freezed
class ErrorDialogAction with _$ErrorDialogAction {
  const factory ErrorDialogAction.close() = _Close;

  const factory ErrorDialogAction.retry({required VoidCallback callback}) =
      _Retry;
}

class ErrorData {
  ErrorData({
    required this.title,
    required this.subTitle,
    required this.action,
  });

  factory ErrorData.unknownError({
    String? message,
  }) =>
      ErrorData(
        title: 'LocaleKeys.common_oopps.tr()',
        subTitle: message ?? 'LocaleKeys.common_unknownError.tr()',
        action: const ErrorDialogAction.close(),
      );

  factory ErrorData.connectionError() => ErrorData(
        title: 'LocaleKeys.common_oopps.tr()',
        subTitle: 'LocaleKeys.common_connectionError.tr()',
        action: const ErrorDialogAction.close(),
      );

  final String title;
  final String subTitle;
  final ErrorDialogAction action;
}
