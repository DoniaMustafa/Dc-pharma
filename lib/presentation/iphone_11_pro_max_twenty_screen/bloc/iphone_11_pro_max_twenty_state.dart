// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twenty_bloc.dart';

/// Represents the state of Iphone11ProMaxTwenty in the application.
class Iphone11ProMaxTwentyState extends Equatable {
  Iphone11ProMaxTwentyState({this.iphone11ProMaxTwentyModelObj});

  Iphone11ProMaxTwentyModel? iphone11ProMaxTwentyModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTwentyModelObj,
      ];
  Iphone11ProMaxTwentyState copyWith(
      {Iphone11ProMaxTwentyModel? iphone11ProMaxTwentyModelObj}) {
    return Iphone11ProMaxTwentyState(
      iphone11ProMaxTwentyModelObj:
          iphone11ProMaxTwentyModelObj ?? this.iphone11ProMaxTwentyModelObj,
    );
  }
}
