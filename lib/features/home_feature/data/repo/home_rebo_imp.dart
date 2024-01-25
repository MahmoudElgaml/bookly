import 'package:bookly_app_mvvm/core/api/api_manager.dart';
import 'package:bookly_app_mvvm/core/api/end_points.dart';
import 'package:bookly_app_mvvm/core/erorr/failuer.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/model/book_model.dart';

import 'package:bookly_app_mvvm/features/home_feature/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReboImp implements HomeRepo {
  ApiManger apiManger;

  HomeReboImp(this.apiManger);

  @override
  Future<Either<Failure, List<Items>>> fetchBookBestSeller() async{
    try {
        var data= await  apiManger.getData(endpoint: EndPoints.newestBook);
       List <Items>? books=BookModel.fromJson(data).items??=[];
       return right(books);

    }
    catch (e){
      if(e is DioException) {
        return left(ServerFailure.fromServer(e));
      }
       return left(ServerFailure(e.toString()));


      //return left(ServerFailure());

    }
  }

  @override
  Future<Either<Failure, List<Items>>> fetchBooks() async{
    try {
      var data= await  apiManger.getData(endpoint: EndPoints.FeatureBook);
      List <Items>? books=BookModel.fromJson(data).items??=[];
      return right(books);

    }
    catch (e){
      if(e is DioException) {
        return left(ServerFailure.fromServer(e));
      }
      return left(ServerFailure(e.toString()));


      //return left(ServerFailure());

    }
  }

 // @override
  //Future<Either<Failure, List<BookModel>>> fetchBooks() {
//
 // }


}