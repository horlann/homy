import 'package:shared/enums/app_type.dart';
import 'package:shared/logger/custom_log.dart';

abstract class ILoggerService {
  void log(
    String message, {
    StackTrace? stackTrace,
    LogLevel logLevel = LogLevel.info,
    bool sendToRemote,
    bool sendToMessenger,
    LogAction? logAction,
    AppType? appType,
  });

  void downloadLogsReport({
    DateTime? startFrom,
    List<LogLevel>? filterByLogLevel,
    List<LogAction>? filterByLogAction,
  });

  void clearLogs();
}
