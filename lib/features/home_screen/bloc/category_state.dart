part of 'category_bloc.dart';

@immutable
abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class IndicatorShowState extends CategoryState {}
class IndicatorHideState extends CategoryState {}
class CategoryFetchedCompletedState extends CategoryState {
  List<Category> categories;
  CategoryFetchedCompletedState({required this.categories});
}
class ErrorState extends CategoryState {
  ErrorModel error;
  ErrorState({required this.error});
}