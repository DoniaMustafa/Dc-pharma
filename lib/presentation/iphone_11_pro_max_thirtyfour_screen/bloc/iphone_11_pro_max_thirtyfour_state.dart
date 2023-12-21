// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtyfour_bloc.dart';

/// Represents the state of Iphone11ProMaxThirtyfour in the application.
class Iphone11ProMaxThirtyfourState extends Equatable {
  Iphone11ProMaxThirtyfourState({this.iphone11ProMaxThirtyfourModelObj});

  Iphone11ProMaxThirtyfourModel? iphone11ProMaxThirtyfourModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxThirtyfourModelObj,
      ];
  Iphone11ProMaxThirtyfourState copyWith(
      {Iphone11ProMaxThirtyfourModel? iphone11ProMaxThirtyfourModelObj}) {
    return Iphone11ProMaxThirtyfourState(
      iphone11ProMaxThirtyfourModelObj: iphone11ProMaxThirtyfourModelObj ??
          this.iphone11ProMaxThirtyfourModelObj,
    );
  }
}
