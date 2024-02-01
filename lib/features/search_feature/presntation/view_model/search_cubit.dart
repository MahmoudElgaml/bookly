import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../home_feature/data/model/book_model.dart';
import '../../data/repo/search_epo_impl.dart';
import '../../data/repo/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  static SearchCubit get(context) => BlocProvider.of(context);
  SearchRepo searchRepo;
  List<Items> theBooks = [];

  SearchCubit(this.searchRepo) : super(SearchInitial());

  Future<void> getBySearch({String search="m"}) async {
    emit(SearchLoading());
    var result = await searchRepo.getBookBySearch(search);
    result.fold((fail) {
      theBooks = [];
      emit(SearchFailure(fail.message));
    }, (books) {
      theBooks = books;
      emit(SearchSuccess());
    });
  }
}
