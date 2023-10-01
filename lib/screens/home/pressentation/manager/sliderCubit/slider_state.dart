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
