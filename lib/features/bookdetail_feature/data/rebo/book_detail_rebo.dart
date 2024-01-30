import 'package:bookly_app_mvvm/core/erorr/failuer.dart';
import 'package:dartz/dartz.dart';

import '../../../home_feature/data/model/book_model.dart';

abstract class BookDetailRepo{
  Future<Either<Failure,List<Items>>> getSimillerBook(String key);
}