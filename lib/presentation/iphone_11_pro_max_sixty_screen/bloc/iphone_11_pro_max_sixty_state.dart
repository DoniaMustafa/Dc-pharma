// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixty_bloc.dart';

/// Represents the state of Iphone11ProMaxSixty in the application.
class Iphone11ProMaxSixtyState extends Equatable {
  Iphone11ProMaxSixtyState({
    this.sliderIndex = 0,
    this.iphone11ProMaxSixtyModelObj,
  });

  Iphone11ProMaxSixtyModel? iphone11ProMaxSixtyModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxSixtyModelObj,
      ];
  Iphone11ProMaxSixtyState copyWith({
    int? sliderIndex,
    Iphone11ProMaxSixtyModel? iphone11ProMaxSixtyModelObj,
  }) {
    return Iphone11ProMaxSixtyState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxSixtyModelObj:
          iphone11ProMaxSixtyModelObj ?? this.iphone11ProMaxSixtyModelObj,
    );
  }
}
