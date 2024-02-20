import 'package:shared/enums/app_type.dart';

final class CustomLog {
  const CustomLog({
    required this.message,
    required this.isDebugMode,
    required this.logLevel,
    required this.action,
    required this.error,
    required this.stackTrace,
    required this.dateTime,
    required this.userId,
    required this.appType,
  });

  final String message;
  final bool isDebugMode;
  final LogLevel logLevel;
  final LogAction? action;
  final Object? error;
  final StackTrace? stackTrace;
  final DateTime? dateTime;
  final String? userId;
  final AppType? appType;

  @override
  String toString() {
    return 'CustomLog{app:$appType message: $message, isDebugMode: $isDebugMode,'
        ' logLevel: $logLevel, action: $action, error: $error,'
        ' stackTrace: $stackTrace, dateTime: $dateTime}';
  }

  String toStringBeautify({bool withStacktrace = false}) {
    String prettyMessage = 'Message: $message,\n'
        'app: $appType,\n,'
        'error: $error,\n'
        'dateTime: $dateTime} \n'
        'user: $userId';
    if (withStacktrace) {
      prettyMessage = '$prettyMessage \n'
          'stackTrace: $stackTrace, ';
    }
    return prettyMessage;
  }
}

enum LogAction { apiCall, navigation, ui, general, unknown }

enum LogLevel { info, warning, error, trace, debug, fatal }
