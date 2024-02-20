class AuthException implements Exception {
  const AuthException();
}

class IncorrectOTPException implements AuthException {
  const IncorrectOTPException();
}

class InvalidNumberException implements AuthException {
  const InvalidNumberException();
}

class PhoneAlreadyExistsException implements AuthException {
  const PhoneAlreadyExistsException();
}

class TooManyRequestsException implements AuthException {
  const TooManyRequestsException();
}

class UnknownException implements AuthException {
  const UnknownException(this.message);

  final String message;
}
