// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentytwo_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentytwo in the application.
class Iphone11ProMaxTwentytwoState extends Equatable {
  Iphone11ProMaxTwentytwoState({this.iphone11ProMaxTwentytwoModelObj});

  Iphone11ProMaxTwentytwoModel? iphone11ProMaxTwentytwoModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTwentytwoModelObj,
      ];
  Iphone11ProMaxTwentytwoState copyWith(
      {Iphone11ProMaxTwentytwoModel? iphone11ProMaxTwentytwoModelObj}) {
    return Iphone11ProMaxTwentytwoState(
      iphone11ProMaxTwentytwoModelObj: iphone11ProMaxTwentytwoModelObj ??
          this.iphone11ProMaxTwentytwoModelObj,
    );
  }
}
