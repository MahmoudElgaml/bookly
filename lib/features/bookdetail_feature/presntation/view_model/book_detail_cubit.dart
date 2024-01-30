import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../home_feature/data/model/book_model.dart';
import '../../data/rebo/book_detail_rebo.dart';

part 'book_detail_state.dart';

class BookDetailCubit extends Cubit<BookDetailState> {
  BookDetailRepo bookDetailRepo;

  BookDetailCubit(this.bookDetailRepo) : super(BookDetailInitial());

  Future<void> getSameBook(String key) async {
    emit(BookDetailLoading());
    var result = await bookDetailRepo.getSimillerBook(key);
    result.fold((failure) {
      emit(BookDetailFailure(failure.message));
    }, (books) {
      emit(BookDetailSuccess(books));
    });
  }
}
