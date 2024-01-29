import 'package:bloc/bloc.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/repo/home_rebo_imp.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/book_model.dart';

part 'home_newest_book_state.dart';

class HomeNewestBookCubit extends Cubit<HomeNewestBookState> {
 HomeRepo homeRepo;
 List<Items>book=[];
static HomeNewestBookCubit get(context)=>BlocProvider.of(context);
  HomeNewestBookCubit(this.homeRepo) : super(HomeNewestBookInitial());
  Future<void> getNewestBook() async {
    emit(HomeGetNewestLoading());
    var result = await homeRepo.fetchBookBestSeller();
    result.fold((fail) {
      emit(HomeGetNewestError(fail.message));
    }, (books) {
      book=books;
      print(books.length);
      emit(HomeGetNewestSuccess(books));
    });
  }
}
