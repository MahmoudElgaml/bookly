part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeGetFeatureLoading extends HomeState {}

class HomeGetFeatureSuccess extends HomeState {
  List<Items> FeatureBooks;

  HomeGetFeatureSuccess(this.FeatureBooks);
}

class HomeGetFeatureError extends HomeState {
  String errorMessage;

  HomeGetFeatureError(this.errorMessage);
}


