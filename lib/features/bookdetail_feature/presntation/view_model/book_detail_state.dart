part of 'book_detail_cubit.dart';

@immutable
abstract class BookDetailState {}

class BookDetailInitial extends BookDetailState {}

class BookDetailLoading extends BookDetailState {}

class BookDetailSuccess extends BookDetailState {
  List<Items> books;

  BookDetailSuccess(this.books);
}

class BookDetailFailure extends BookDetailState {
  String errorMessage;

  BookDetailFailure(this.errorMessage);
}
