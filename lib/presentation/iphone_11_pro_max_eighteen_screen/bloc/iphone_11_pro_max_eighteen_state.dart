// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_eighteen_bloc.dart';

/// Represents the state of Iphone11ProMaxEighteen in the application.
class Iphone11ProMaxEighteenState extends Equatable {
  Iphone11ProMaxEighteenState({this.iphone11ProMaxEighteenModelObj});

  Iphone11ProMaxEighteenModel? iphone11ProMaxEighteenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxEighteenModelObj,
      ];
  Iphone11ProMaxEighteenState copyWith(
      {Iphone11ProMaxEighteenModel? iphone11ProMaxEighteenModelObj}) {
    return Iphone11ProMaxEighteenState(
      iphone11ProMaxEighteenModelObj:
          iphone11ProMaxEighteenModelObj ?? this.iphone11ProMaxEighteenModelObj,
    );
  }
}
