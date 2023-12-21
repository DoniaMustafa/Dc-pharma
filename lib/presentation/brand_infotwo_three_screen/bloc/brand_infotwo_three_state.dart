// ignore_for_file: must_be_immutable

part of 'brand_infotwo_three_bloc.dart';

/// Represents the state of BrandInfotwoThree in the application.
class BrandInfotwoThreeState extends Equatable {
  BrandInfotwoThreeState({this.brandInfotwoThreeModelObj});

  BrandInfotwoThreeModel? brandInfotwoThreeModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoThreeModelObj,
      ];
  BrandInfotwoThreeState copyWith(
      {BrandInfotwoThreeModel? brandInfotwoThreeModelObj}) {
    return BrandInfotwoThreeState(
      brandInfotwoThreeModelObj:
          brandInfotwoThreeModelObj ?? this.brandInfotwoThreeModelObj,
    );
  }
}
