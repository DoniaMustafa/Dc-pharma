// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyone_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentyone in the application.
class Iphone11ProMaxTwentyoneState extends Equatable {
  Iphone11ProMaxTwentyoneState({this.iphone11ProMaxTwentyoneModelObj});

  Iphone11ProMaxTwentyoneModel? iphone11ProMaxTwentyoneModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTwentyoneModelObj,
      ];
  Iphone11ProMaxTwentyoneState copyWith(
      {Iphone11ProMaxTwentyoneModel? iphone11ProMaxTwentyoneModelObj}) {
    return Iphone11ProMaxTwentyoneState(
      iphone11ProMaxTwentyoneModelObj: iphone11ProMaxTwentyoneModelObj ??
          this.iphone11ProMaxTwentyoneModelObj,
    );
  }
}
