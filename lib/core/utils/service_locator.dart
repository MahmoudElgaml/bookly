import 'package:bookly_app_mvvm/core/api/api_manager.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/data/rebo/book_detail_rebo_impl.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/repo/home_rebo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiManger>(ApiManger(Dio()));
  getIt.registerSingleton<HomeReboImp>(HomeReboImp(getIt.get<ApiManger>()));
  getIt.registerSingleton<BookDetailReboImpl>(
      BookDetailReboImpl(getIt.get<ApiManger>()));
}
