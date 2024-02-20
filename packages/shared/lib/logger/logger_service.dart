import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:shared/enums/app_type.dart';
import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/i_logger_service.dart';
import 'package:shared/logger/telegram_sender_service.dart';

class LoggerService implements ILoggerService {
  factory LoggerService() {
    return _singleton;
  }

  LoggerService._();

  final Logger _logger = Logger();
  final List<CustomLog> _logsHistory = [];

  static final LoggerService _singleton = LoggerService._();

  @override
  void log(
    String message, {
    Object? error,
    StackTrace? stackTrace,
    LogLevel logLevel = LogLevel.info,
    bool sendToRemote = false,
    bool? sendToMessenger = true,
    LogAction? logAction,
    AppType? appType,
  }) {
    final log = CustomLog(
      message: message,
      error: error,
      stackTrace: stackTrace,
      logLevel: logLevel,
      isDebugMode: kDebugMode,
      action: logAction,
      dateTime: DateTime.now(),
      userId: FirebaseAuth.instance.currentUser?.phoneNumber ?? '',
      appType: appType,
    );
    _logsHistory.add(log);
    _printToConsole(log);
    if (sendToRemote) {
      _sendToRemote();
    }
    if (sendToMessenger ??
        (logLevel == LogLevel.error || logLevel == LogLevel.warning)) {
      final TelegramClient client = TelegramClient();
      client.sendMessage(log.toStringBeautify(withStacktrace: true));
    }
  }

  void _printToConsole(CustomLog log) {
    switch (log.logLevel) {
      case LogLevel.trace:
        _logger.t(
          log.message,
          time: DateTime.now(),
          error: log.error,
          stackTrace: log.stackTrace,
        );
      case LogLevel.debug:
        _logger.d(
          log.message,
          time: DateTime.now(),
          error: log.error,
          stackTrace: log.stackTrace,
        );
      case LogLevel.info:
        _logger.i(
          log.message,
          time: DateTime.now(),
          error: log.error,
          stackTrace: log.stackTrace,
        );
      case LogLevel.warning:
        _logger.w(
          log.message,
          time: DateTime.now(),
          error: log.error,
          stackTrace: log.stackTrace,
        );
      case LogLevel.error:
        _logger.e(
          log.message,
          time: DateTime.now(),
          error: log.error,
          stackTrace: log.stackTrace,
        );
      case LogLevel.fatal:
        _logger.f(
          log.message,
          time: DateTime.now(),
          error: log.error,
          stackTrace: log.stackTrace,
        );
      default:
        _logger.i(
          log.message,
          time: DateTime.now(),
          error: log.error,
          stackTrace: log.stackTrace,
        );
        break;
    }
  }

  // TODO(any): Investigate and implement remote errors logging service such as [Crashlytics/Sentry]
  Future<void> _sendToRemote() async {}

  // TODO(any): Implement later
  @override
  Future<void> downloadLogsReport({
    DateTime? startFrom,
    List<LogLevel>? filterByLogLevel,
    List<LogAction>? filterByLogAction,
  }) async {
    for (final log in _logsHistory) {
      _printToConsole(log);
    }
  }

  @override
  void clearLogs() {
    _logsHistory.clear();
  }
}
