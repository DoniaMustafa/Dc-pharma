// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtythree_bloc.dart';

/// Represents the state of Iphone11ProMaxSixtythree in the application.
class Iphone11ProMaxSixtythreeState extends Equatable {
  Iphone11ProMaxSixtythreeState({this.iphone11ProMaxSixtythreeModelObj});

  Iphone11ProMaxSixtythreeModel? iphone11ProMaxSixtythreeModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxSixtythreeModelObj,
      ];
  Iphone11ProMaxSixtythreeState copyWith(
      {Iphone11ProMaxSixtythreeModel? iphone11ProMaxSixtythreeModelObj}) {
    return Iphone11ProMaxSixtythreeState(
      iphone11ProMaxSixtythreeModelObj: iphone11ProMaxSixtythreeModelObj ??
          this.iphone11ProMaxSixtythreeModelObj,
    );
  }
}
