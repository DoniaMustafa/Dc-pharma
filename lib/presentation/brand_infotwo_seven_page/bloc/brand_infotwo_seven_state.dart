// ignore_for_file: must_be_immutable

part of 'brand_infotwo_seven_bloc.dart';

/// Represents the state of BrandInfotwoSeven in the application.
class BrandInfotwoSevenState extends Equatable {
  BrandInfotwoSevenState({this.brandInfotwoSevenModelObj});

  BrandInfotwoSevenModel? brandInfotwoSevenModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoSevenModelObj,
      ];
  BrandInfotwoSevenState copyWith(
      {BrandInfotwoSevenModel? brandInfotwoSevenModelObj}) {
    return BrandInfotwoSevenState(
      brandInfotwoSevenModelObj:
          brandInfotwoSevenModelObj ?? this.brandInfotwoSevenModelObj,
    );
  }
}
