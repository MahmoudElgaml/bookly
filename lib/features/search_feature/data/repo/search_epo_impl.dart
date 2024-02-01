import 'package:bookly_app_mvvm/core/api/api_manager.dart';
import 'package:bookly_app_mvvm/core/api/end_points.dart';
import 'package:bookly_app_mvvm/core/erorr/failuer.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/model/book_model.dart';
import 'package:bookly_app_mvvm/features/search_feature/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  ApiManger apiManger;

  SearchRepoImpl(this.apiManger);

  @override
  Future<Either<Failure, List<Items>>> getBookBySearch(String search) async {
    try {
      var result =
          await apiManger.getData(endpoint: EndPoints.getBookBySearch + search);
      List<Items> books = BookModel.fromJson(result).items ?? [];
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromServer(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
