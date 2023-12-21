// ignore_for_file: must_be_immutable

part of 'brand_infotwo_seventeen_bloc.dart';

/// Represents the state of BrandInfotwoSeventeen in the application.
class BrandInfotwoSeventeenState extends Equatable {
  BrandInfotwoSeventeenState({this.brandInfotwoSeventeenModelObj});

  BrandInfotwoSeventeenModel? brandInfotwoSeventeenModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoSeventeenModelObj,
      ];
  BrandInfotwoSeventeenState copyWith(
      {BrandInfotwoSeventeenModel? brandInfotwoSeventeenModelObj}) {
    return BrandInfotwoSeventeenState(
      brandInfotwoSeventeenModelObj:
          brandInfotwoSeventeenModelObj ?? this.brandInfotwoSeventeenModelObj,
    );
  }
}
