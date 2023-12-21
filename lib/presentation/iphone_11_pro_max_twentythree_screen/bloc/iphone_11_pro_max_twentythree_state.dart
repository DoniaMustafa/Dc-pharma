// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentythree_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentythree in the application.
class Iphone11ProMaxTwentythreeState extends Equatable {
  Iphone11ProMaxTwentythreeState({this.iphone11ProMaxTwentythreeModelObj});

  Iphone11ProMaxTwentythreeModel? iphone11ProMaxTwentythreeModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTwentythreeModelObj,
      ];
  Iphone11ProMaxTwentythreeState copyWith(
      {Iphone11ProMaxTwentythreeModel? iphone11ProMaxTwentythreeModelObj}) {
    return Iphone11ProMaxTwentythreeState(
      iphone11ProMaxTwentythreeModelObj: iphone11ProMaxTwentythreeModelObj ??
          this.iphone11ProMaxTwentythreeModelObj,
    );
  }
}
