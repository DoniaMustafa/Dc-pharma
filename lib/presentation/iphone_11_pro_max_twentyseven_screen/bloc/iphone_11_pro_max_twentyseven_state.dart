// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyseven_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentyseven in the application.
class Iphone11ProMaxTwentysevenState extends Equatable {
  Iphone11ProMaxTwentysevenState({
    this.sliderIndex = 0,
    this.iphone11ProMaxTwentysevenModelObj,
  });

  Iphone11ProMaxTwentysevenModel? iphone11ProMaxTwentysevenModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxTwentysevenModelObj,
      ];
  Iphone11ProMaxTwentysevenState copyWith({
    int? sliderIndex,
    Iphone11ProMaxTwentysevenModel? iphone11ProMaxTwentysevenModelObj,
  }) {
    return Iphone11ProMaxTwentysevenState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxTwentysevenModelObj: iphone11ProMaxTwentysevenModelObj ??
          this.iphone11ProMaxTwentysevenModelObj,
    );
  }
}
