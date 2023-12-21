// ignore_for_file: must_be_immutable

part of 'brand_infotwo_eight_bloc.dart';

/// Represents the state of BrandInfotwoEight in the application.
class BrandInfotwoEightState extends Equatable {
  BrandInfotwoEightState({this.brandInfotwoEightModelObj});

  BrandInfotwoEightModel? brandInfotwoEightModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoEightModelObj,
      ];
  BrandInfotwoEightState copyWith(
      {BrandInfotwoEightModel? brandInfotwoEightModelObj}) {
    return BrandInfotwoEightState(
      brandInfotwoEightModelObj:
          brandInfotwoEightModelObj ?? this.brandInfotwoEightModelObj,
    );
  }
}
