import 'package:bookly_app_mvvm/core/utils/constants.dart';
import 'package:dio/dio.dart';

class ApiManger {
  Dio dio;

  ApiManger(this.dio);

  Future<Map<String, dynamic>> getData({required String endpoint}) async {
    var response = await dio.get("$BASE_URL$endpoint");
    return response.data;
  }
}
