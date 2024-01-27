import 'package:bookly_app_mvvm/core/api/api_manager.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/repo/home_rebo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup(){
  getIt.registerSingleton<HomeReboImp>(HomeReboImp(ApiManger(Dio())));


}