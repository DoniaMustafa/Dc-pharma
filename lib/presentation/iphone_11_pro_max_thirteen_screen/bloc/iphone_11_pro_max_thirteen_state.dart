// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirteen_bloc.dart';

/// Represents the state of Iphone11ProMaxThirteen in the application.
class Iphone11ProMaxThirteenState extends Equatable {
  Iphone11ProMaxThirteenState({this.iphone11ProMaxThirteenModelObj});

  Iphone11ProMaxThirteenModel? iphone11ProMaxThirteenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxThirteenModelObj,
      ];
  Iphone11ProMaxThirteenState copyWith(
      {Iphone11ProMaxThirteenModel? iphone11ProMaxThirteenModelObj}) {
    return Iphone11ProMaxThirteenState(
      iphone11ProMaxThirteenModelObj:
          iphone11ProMaxThirteenModelObj ?? this.iphone11ProMaxThirteenModelObj,
    );
  }
}
