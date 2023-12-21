// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtyseven_bloc.dart';

/// Represents the state of Iphone11ProMaxThirtyseven in the application.
class Iphone11ProMaxThirtysevenState extends Equatable {
  Iphone11ProMaxThirtysevenState({this.iphone11ProMaxThirtysevenModelObj});

  Iphone11ProMaxThirtysevenModel? iphone11ProMaxThirtysevenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxThirtysevenModelObj,
      ];
  Iphone11ProMaxThirtysevenState copyWith(
      {Iphone11ProMaxThirtysevenModel? iphone11ProMaxThirtysevenModelObj}) {
    return Iphone11ProMaxThirtysevenState(
      iphone11ProMaxThirtysevenModelObj: iphone11ProMaxThirtysevenModelObj ??
          this.iphone11ProMaxThirtysevenModelObj,
    );
  }
}
