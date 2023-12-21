// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyeight_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentyeight in the application.
class Iphone11ProMaxTwentyeightState extends Equatable {
  Iphone11ProMaxTwentyeightState({
    this.sliderIndex = 0,
    this.iphone11ProMaxTwentyeightModelObj,
  });

  Iphone11ProMaxTwentyeightModel? iphone11ProMaxTwentyeightModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxTwentyeightModelObj,
      ];
  Iphone11ProMaxTwentyeightState copyWith({
    int? sliderIndex,
    Iphone11ProMaxTwentyeightModel? iphone11ProMaxTwentyeightModelObj,
  }) {
    return Iphone11ProMaxTwentyeightState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxTwentyeightModelObj: iphone11ProMaxTwentyeightModelObj ??
          this.iphone11ProMaxTwentyeightModelObj,
    );
  }
}
