// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtyfive_bloc.dart';

/// Represents the state of Iphone11ProMaxThirtyfive in the application.
class Iphone11ProMaxThirtyfiveState extends Equatable {
  Iphone11ProMaxThirtyfiveState({this.iphone11ProMaxThirtyfiveModelObj});

  Iphone11ProMaxThirtyfiveModel? iphone11ProMaxThirtyfiveModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxThirtyfiveModelObj,
      ];
  Iphone11ProMaxThirtyfiveState copyWith(
      {Iphone11ProMaxThirtyfiveModel? iphone11ProMaxThirtyfiveModelObj}) {
    return Iphone11ProMaxThirtyfiveState(
      iphone11ProMaxThirtyfiveModelObj: iphone11ProMaxThirtyfiveModelObj ??
          this.iphone11ProMaxThirtyfiveModelObj,
    );
  }
}
