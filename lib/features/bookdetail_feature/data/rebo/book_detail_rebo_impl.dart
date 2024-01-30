import 'package:bookly_app_mvvm/core/api/api_manager.dart';
import 'package:bookly_app_mvvm/core/api/end_points.dart';
import 'package:bookly_app_mvvm/core/erorr/failuer.dart';
import 'package:bookly_app_mvvm/features/bookdetail_feature/data/rebo/book_detail_rebo.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookDetailReboImpl implements BookDetailRepo {
  ApiManger apiManger;

  BookDetailReboImpl(this.apiManger);

  @override
  Future<Either<Failure, List<Items>>> getSimillerBook(String key) async {
    try {
      var result = await apiManger.getData(endpoint: EndPoints.sameBook + key);
      List<Items> sameBook = BookModel.fromJson(result).items ?? [];
      return right(sameBook);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
