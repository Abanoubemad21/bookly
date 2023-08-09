import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

// ignore: camel_case_types
class serverfailure extends Failure {
  serverfailure(super.errMessage);
  factory serverfailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return serverfailure("Connection timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return serverfailure("receive timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return serverfailure("send timeout with ApiServer");
      case DioExceptionType.badResponse:
        return serverfailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.badCertificate:
        return serverfailure("Bad Certificate!!");
      case DioExceptionType.cancel:
        return serverfailure("Request with Apiserver was cancelled");
      case DioExceptionType.unknown:
        if (dioError.message == 'SocketException') {
          return serverfailure("No Internet Connection");
        }
        return serverfailure("UnExpected Error, please try later !");
      default:
        return serverfailure('Oops there is an error');
    }
  }
  factory serverfailure.fromResponse(int statuscode, dynamic response) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return serverfailure(response['error']['message']);
    } else if (statuscode == 404) {
      return serverfailure('Your request not found , please try later !');
    } else if (statuscode == 500) {
      return serverfailure('Internel server Error , please try later !');
    } else {
      return serverfailure('Oops there is an error');
    }
  }
}
