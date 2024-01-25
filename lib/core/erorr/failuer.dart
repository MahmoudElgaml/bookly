import 'package:dio/dio.dart';

abstract class Failure {
  String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromServer(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("connection Timeout");
      case DioExceptionType.sendTimeout:
        return ServerFailure("send Timeout");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("recive Timeout");
      case DioExceptionType.badCertificate:
        return ServerFailure("connection Timeout");
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure("request to server is canceled");
      case DioExceptionType.connectionError:
        return ServerFailure("connection Timeout");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure("error in internet");
        } else {
          return ServerFailure("opps there something went wrong");
        }
      default:
        return ServerFailure("opps there something went wrong");
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("not found ,try again later");
    } else if (statusCode == 500) {
      return ServerFailure("internal server error, please try later");
    } else {
      return ServerFailure("opps try again latter");
    }
  }
}
