class CustomException implements Exception {
  CustomException({required this.message});

  final String? message;
}

class SerializationError implements CustomException {
  SerializationError({this.message});

  @override
  final String? message;
}

class FirebaseError implements CustomException {
  FirebaseError({this.message});

  @override
  final String? message;
}

class NoDataInDatabaseError implements CustomException {
  NoDataInDatabaseError({this.message});

  @override
  final String? message;
}

class GooglePlacesApiError implements CustomException {
  GooglePlacesApiError({this.message});

  @override
  final String? message;
}
