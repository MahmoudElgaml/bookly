import 'package:bloc/bloc.dart';
import 'package:bookly_app_mvvm/features/home_feature/data/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../data/model/book_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());
  HomeRepo homeRepo;

  static HomeCubit get(context) => BlocProvider.of(context);

  Future<void> getFeature() async {
    emit(HomeGetFeatureLoading());
    var result = await homeRepo.fetchBooks();
    result.fold((fail) {
      emit(HomeGetFeatureError(fail.message));
    }, (books) {
      print(books.length);
      emit(HomeGetFeatureSuccess(books));
    });
  }
}
