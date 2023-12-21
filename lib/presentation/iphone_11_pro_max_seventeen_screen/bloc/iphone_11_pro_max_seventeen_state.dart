// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_seventeen_bloc.dart';

/// Represents the state of Iphone11ProMaxSeventeen in the application.
class Iphone11ProMaxSeventeenState extends Equatable {
  Iphone11ProMaxSeventeenState({
    this.sliderIndex = 0,
    this.iphone11ProMaxSeventeenModelObj,
  });

  Iphone11ProMaxSeventeenModel? iphone11ProMaxSeventeenModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxSeventeenModelObj,
      ];
  Iphone11ProMaxSeventeenState copyWith({
    int? sliderIndex,
    Iphone11ProMaxSeventeenModel? iphone11ProMaxSeventeenModelObj,
  }) {
    return Iphone11ProMaxSeventeenState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxSeventeenModelObj: iphone11ProMaxSeventeenModelObj ??
          this.iphone11ProMaxSeventeenModelObj,
    );
  }
}
