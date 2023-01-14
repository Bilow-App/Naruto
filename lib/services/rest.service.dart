// 📦 Package imports:
import 'package:dio/dio.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';

class RestService implements RestServiceAbstract {
  final Dio _dio;

  RestService({Dio? dio}) : _dio = dio ?? Dio() {
    _dio.interceptors.add(DioInterceptor());
  }

  @override
  Future<dynamic> create(
    String path,
    Map<String, dynamic> params,
  ) async {
    final response = await _dio.post(path, data: params);

    return response.data;
  }

  @override
  Future<dynamic> read(
    String path, {
    Map<String, dynamic>? params,
  }) async {
    final response = await _dio.get(path, queryParameters: params);

    return response.data;
  }

  @override
  Future<dynamic> update(
    String path, {
    Map<String, dynamic>? params,
  }) async {
    final response = await _dio.put(path, data: params);

    return response.data;
  }

  @override
  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? params,
  }) async {
    final response = await _dio.delete(path, queryParameters: params);

    return response.data;
  }
}


class DioInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Access denied';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}
