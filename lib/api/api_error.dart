import 'dart:io';
import 'package:dio/dio.dart';

class ApiError<T extends Response> implements Exception {
  final T response;

  const ApiError(this.response);
}

class ApiConnectionRefusedError implements Exception {
  final SocketException socketException;

  const ApiConnectionRefusedError(this.socketException);

  @override
  String toString() {
    var address = socketException.address.toString();
    var port = socketException.port.toString();
    return 'ApiConnectionRefusedError: Connection refused on $address and port $port';
  }

  String toHumanReadableMessage() {
    return 'No internet connection.';
  }
}
