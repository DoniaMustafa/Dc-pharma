// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirty_bloc.dart';

/// Represents the state of Iphone11ProMaxThirty in the application.
class Iphone11ProMaxThirtyState extends Equatable {
  Iphone11ProMaxThirtyState({
    this.sliderIndex = 0,
    this.iphone11ProMaxThirtyModelObj,
  });

  Iphone11ProMaxThirtyModel? iphone11ProMaxThirtyModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxThirtyModelObj,
      ];
  Iphone11ProMaxThirtyState copyWith({
    int? sliderIndex,
    Iphone11ProMaxThirtyModel? iphone11ProMaxThirtyModelObj,
  }) {
    return Iphone11ProMaxThirtyState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxThirtyModelObj:
          iphone11ProMaxThirtyModelObj ?? this.iphone11ProMaxThirtyModelObj,
    );
  }
}
