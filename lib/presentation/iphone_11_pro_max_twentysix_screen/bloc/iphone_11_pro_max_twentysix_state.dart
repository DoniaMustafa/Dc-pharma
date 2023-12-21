// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentysix_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentysix in the application.
class Iphone11ProMaxTwentysixState extends Equatable {
  Iphone11ProMaxTwentysixState({this.iphone11ProMaxTwentysixModelObj});

  Iphone11ProMaxTwentysixModel? iphone11ProMaxTwentysixModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTwentysixModelObj,
      ];
  Iphone11ProMaxTwentysixState copyWith(
      {Iphone11ProMaxTwentysixModel? iphone11ProMaxTwentysixModelObj}) {
    return Iphone11ProMaxTwentysixState(
      iphone11ProMaxTwentysixModelObj: iphone11ProMaxTwentysixModelObj ??
          this.iphone11ProMaxTwentysixModelObj,
    );
  }
}
