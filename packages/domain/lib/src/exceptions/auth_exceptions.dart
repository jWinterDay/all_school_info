// sign in
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

class AuthMultiplyRowsException implements Exception {
  const AuthMultiplyRowsException(this.message);

  final String message;

  @override
  String toString() => 'AuthMultiplyRowsException: $message';
}

class AuthEmailPermissionDeniedException implements Exception {
  const AuthEmailPermissionDeniedException(this.message);

  final String message;

  @override
  String toString() => 'AuthEmailPermissionDeniedException: $message';
}

// registration
class AuthWeakPasswordException implements Exception {
  const AuthWeakPasswordException(this.message);

  final String message;

  @override
  String toString() => 'AuthWeakPasswordException: $message';
}

class AuthEmailAlreadyInUseException implements Exception {
  const AuthEmailAlreadyInUseException(this.message);

  final String message;

  @override
  String toString() => 'AuthEmailAlreadyInUseException: $message';
}
