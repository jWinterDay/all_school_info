class AuthWrongPasswordException implements Exception {
  const AuthWrongPasswordException(this.message);

  final String message;

  @override
  String toString() => 'AuthWrongPasswordException: $message';
}

class AuthUserNotFoundException implements Exception {
  const AuthUserNotFoundException(this.message);

  final String message;

  @override
  String toString() => 'UserNotFoundException: $message';
}

class AuthInvalidEmailException implements Exception {
  const AuthInvalidEmailException(this.message);

  final String message;

  @override
  String toString() => 'AuthInvalidEmailException: $message';
}

class AuthUnknownException implements Exception {
  const AuthUnknownException(this.message);

  final String message;

  @override
  String toString() => 'AuthUnknownException: $message';
}

class AuthUnexpectedException implements Exception {
  const AuthUnexpectedException(this.message);

  final String message;

  @override
  String toString() => 'AuthUnexpectedException: $message';
}
