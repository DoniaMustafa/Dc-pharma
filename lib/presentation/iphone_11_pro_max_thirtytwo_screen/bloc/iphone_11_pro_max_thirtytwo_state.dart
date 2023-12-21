// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtytwo_bloc.dart';

/// Represents the state of Iphone11ProMaxThirtytwo in the application.
class Iphone11ProMaxThirtytwoState extends Equatable {
  Iphone11ProMaxThirtytwoState({
    this.sliderIndex = 0,
    this.iphone11ProMaxThirtytwoModelObj,
  });

  Iphone11ProMaxThirtytwoModel? iphone11ProMaxThirtytwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxThirtytwoModelObj,
      ];
  Iphone11ProMaxThirtytwoState copyWith({
    int? sliderIndex,
    Iphone11ProMaxThirtytwoModel? iphone11ProMaxThirtytwoModelObj,
  }) {
    return Iphone11ProMaxThirtytwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxThirtytwoModelObj: iphone11ProMaxThirtytwoModelObj ??
          this.iphone11ProMaxThirtytwoModelObj,
    );
  }
}
