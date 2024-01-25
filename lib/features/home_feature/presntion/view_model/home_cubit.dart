import 'package:bloc/bloc.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

import '../../data/model/book_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  HomeRepo homeRepo;

  Future<void> getFeature() async {
    emit(HomeGetFeatureLoading());
    var result = await homeRepo.fetchBooks();
    result.fold((fail) {
      emit(HomeGetFeatureError(fail.message));
    }, (books) {
      emit(HomeGetFeatureSuccess(books));
    });
  }
  Future<void> getNewestBook() async {
    emit(HomeGetNewestLoading());
    var result = await homeRepo.fetchBookBestSeller();
    result.fold((fail) {
      emit(HomeGetNewestError(fail.message));
    }, (books) {
      emit(HomeGetNewestSuccess(books));
    });
  }
}
