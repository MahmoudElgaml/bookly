part of 'home_newest_book_cubit.dart';

@immutable
abstract class HomeNewestBookState {}

class HomeNewestBookInitial extends HomeNewestBookState {}
class HomeGetNewestLoading extends HomeNewestBookState {}

class HomeGetNewestSuccess extends HomeNewestBookState {
  List<Items> newestBook;

  HomeGetNewestSuccess(this.newestBook);

}

class HomeGetNewestError extends HomeNewestBookState {
  String errorMessage;

  HomeGetNewestError(this.errorMessage);

}
