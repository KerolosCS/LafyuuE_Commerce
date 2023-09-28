part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class FetchCategorySuccess extends CategoryState {}

final class FetchCategoryFail extends CategoryState {}

final class FetchCategoryLoading extends CategoryState {}
