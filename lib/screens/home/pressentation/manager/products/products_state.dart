part of 'products_cubit.dart';

sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class GetProductsSuccess extends ProductsState {}

final class GetProductsFail extends ProductsState {}

final class GetProductsLoading extends ProductsState {}
