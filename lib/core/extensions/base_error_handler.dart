import 'package:shared/logger/custom_log.dart';
import 'package:shared/logger/logger_service.dart';

extension BaseErrorHandler<T> on Future<T> {
  Future<T> apiErrorHandler(String place, [Exception? unknownError]) async {
    try {
      return await this;
    } on Exception catch (e, stackTrace) {
      LoggerService().log(
        '$place Error',
        error: e,
        stackTrace: stackTrace,
        logAction: LogAction.apiCall,
        logLevel: LogLevel.error,
      );
      rethrow;
    } catch (e, stackTrace) {
      LoggerService().log(
        '$place Unknown Error',
        error: e,
        stackTrace: stackTrace,
        logAction: LogAction.unknown,
        logLevel: LogLevel.error,
      );
      if (unknownError != null) {
        Error.throwWithStackTrace(unknownError, stackTrace);
      } else {
        rethrow;
      }
    }
  }
}
