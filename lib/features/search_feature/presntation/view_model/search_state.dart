part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchLoading extends SearchState {}

class SearchSuccess extends SearchState {

}

class SearchFailure extends SearchState {
  String errorMessage;

  SearchFailure(this.errorMessage);
}
