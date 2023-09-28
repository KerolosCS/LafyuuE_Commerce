part of 'home_cubit.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class SlideChangeState extends HomeState {}

final class BottomNavChange extends HomeState {}

final class ShowStack extends HomeState {}
