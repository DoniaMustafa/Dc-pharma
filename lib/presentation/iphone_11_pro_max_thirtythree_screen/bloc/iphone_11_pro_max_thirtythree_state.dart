// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtythree_bloc.dart';

/// Represents the state of Iphone11ProMaxThirtythree in the application.
class Iphone11ProMaxThirtythreeState extends Equatable {
  Iphone11ProMaxThirtythreeState({this.iphone11ProMaxThirtythreeModelObj});

  Iphone11ProMaxThirtythreeModel? iphone11ProMaxThirtythreeModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxThirtythreeModelObj,
      ];
  Iphone11ProMaxThirtythreeState copyWith(
      {Iphone11ProMaxThirtythreeModel? iphone11ProMaxThirtythreeModelObj}) {
    return Iphone11ProMaxThirtythreeState(
      iphone11ProMaxThirtythreeModelObj: iphone11ProMaxThirtythreeModelObj ??
          this.iphone11ProMaxThirtythreeModelObj,
    );
  }
}
