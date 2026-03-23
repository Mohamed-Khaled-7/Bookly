import 'package:dio/dio.dart';

abstract class Failure {
  String errMessage;
  Failure({required this.errMessage});
}
class ServerFailure extends Failure {
  ServerFailure({required super.errMessage});
  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMessage: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMessage: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMessage: 'Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMessage: 'Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMessage: 'Cancel');
      case DioExceptionType.connectionError:
        return ServerFailure(errMessage: 'Connection Error');
      case DioExceptionType.unknown:
        return ServerFailure(errMessage: 'Unknown Error'); 
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errMessage: 'Not Found, Please Try Again');
    } else if (statusCode == 500) {
      return ServerFailure(
        errMessage: 'Internal Server Error, Please Try Again',
      );
    } else {
      return ServerFailure(
        errMessage: 'Opps There was an Error, Please Try Again',
      );
    }
  }
}
