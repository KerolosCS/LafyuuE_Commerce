part of 'slider_cubit.dart';

@immutable
sealed class SliderState {}

final class SliderInitial extends SliderState {}

final class FetchBannersSuccess extends SliderState {}

final class FetchBannersFail extends SliderState {
  final String error;

  FetchBannersFail(this.error);
}

final class FetchBannersLoading extends SliderState {}
