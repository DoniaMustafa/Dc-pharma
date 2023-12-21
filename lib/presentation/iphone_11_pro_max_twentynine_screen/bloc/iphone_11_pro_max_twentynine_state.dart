// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentynine_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentynine in the application.
class Iphone11ProMaxTwentynineState extends Equatable {
  Iphone11ProMaxTwentynineState({
    this.sliderIndex = 0,
    this.iphone11ProMaxTwentynineModelObj,
  });

  Iphone11ProMaxTwentynineModel? iphone11ProMaxTwentynineModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxTwentynineModelObj,
      ];
  Iphone11ProMaxTwentynineState copyWith({
    int? sliderIndex,
    Iphone11ProMaxTwentynineModel? iphone11ProMaxTwentynineModelObj,
  }) {
    return Iphone11ProMaxTwentynineState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxTwentynineModelObj: iphone11ProMaxTwentynineModelObj ??
          this.iphone11ProMaxTwentynineModelObj,
    );
  }
}
