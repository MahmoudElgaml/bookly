import 'package:bookly_app_mvvm/core/erorr/failuer.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<Items>>> fetchBooks();
  Future<Either<Failure,List<Items>>> fetchBookBestSeller();



}