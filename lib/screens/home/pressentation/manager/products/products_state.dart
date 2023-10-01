/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

part of 'products_cubit.dart';

sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class GetProductsSuccess extends ProductsState {}

final class GetProductsFail extends ProductsState {}

final class GetProductsLoading extends ProductsState {}
