// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyfour_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentyfour in the application.
class Iphone11ProMaxTwentyfourState extends Equatable {
  Iphone11ProMaxTwentyfourState({this.iphone11ProMaxTwentyfourModelObj});

  Iphone11ProMaxTwentyfourModel? iphone11ProMaxTwentyfourModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTwentyfourModelObj,
      ];
  Iphone11ProMaxTwentyfourState copyWith(
      {Iphone11ProMaxTwentyfourModel? iphone11ProMaxTwentyfourModelObj}) {
    return Iphone11ProMaxTwentyfourState(
      iphone11ProMaxTwentyfourModelObj: iphone11ProMaxTwentyfourModelObj ??
          this.iphone11ProMaxTwentyfourModelObj,
    );
  }
}
