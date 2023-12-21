// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtyone_bloc.dart';

/// Represents the state of Iphone11ProMaxThirtyone in the application.
class Iphone11ProMaxThirtyoneState extends Equatable {
  Iphone11ProMaxThirtyoneState({
    this.sliderIndex = 0,
    this.iphone11ProMaxThirtyoneModelObj,
  });

  Iphone11ProMaxThirtyoneModel? iphone11ProMaxThirtyoneModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxThirtyoneModelObj,
      ];
  Iphone11ProMaxThirtyoneState copyWith({
    int? sliderIndex,
    Iphone11ProMaxThirtyoneModel? iphone11ProMaxThirtyoneModelObj,
  }) {
    return Iphone11ProMaxThirtyoneState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxThirtyoneModelObj: iphone11ProMaxThirtyoneModelObj ??
          this.iphone11ProMaxThirtyoneModelObj,
    );
  }
}
