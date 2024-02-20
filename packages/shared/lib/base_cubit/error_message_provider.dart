part of base_cubit;

/// Providing functionality to emit error message
abstract class ErrorMessageProvider {
  /// Emit message error
  /// [message] error message
  /// ```
  /// errorMessageProviderImpl.show('error message')
  /// ```
  void showError(ErrorData message);

  void showUnknownError([String? message]);

  void showConnectionError();
}

abstract class ErrorMessageStreamProvider implements ErrorMessageProvider {
  /// Stream emitting error message
  Stream<ErrorData?> get errorStream;

  /// Clear error after error was handled
  void clearError();

  /// Dispose error subscription
  void disposeErrorStream();
}

/// Mixins that implement ErrorMessageProvider
mixin ErrorMessageStreamProviderMixin implements ErrorMessageStreamProvider {
  @protected
  final _errorStreamSubject = PublishSubject<ErrorData?>();

  @override
  Stream<ErrorData?> get errorStream => _errorStreamSubject.stream;

  @override
  void showError(ErrorData message) {
    _errorStreamSubject.add(message);
  }

  @override
  void showUnknownError([String? message]) {
    _errorStreamSubject.add(ErrorData.unknownError(message: message));
  }

  @override
  void showConnectionError() {}

  @override
  void clearError() {
    _errorStreamSubject.add(null);
  }

  @override
  void disposeErrorStream() {
    _errorStreamSubject.close();
  }
}
