abstract class NetworkException with Exception {}

class WrongIdException extends NetworkException {
  @override
  String toString() => 'Your id is wrong.';
}

class GenericException extends NetworkException {
  final String? e;

  GenericException(this.e);

  @override
  String toString() => e ?? 'Contact to the admin';
}

class NoRecentException extends NetworkException {
  @override
  String toString() => 'No Data';
}
