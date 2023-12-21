// ignore_for_file: must_be_immutable

part of 'brand_infotwo_two_bloc.dart';

/// Represents the state of BrandInfotwoTwo in the application.
class BrandInfotwoTwoState extends Equatable {
  BrandInfotwoTwoState({this.brandInfotwoTwoModelObj});

  BrandInfotwoTwoModel? brandInfotwoTwoModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoTwoModelObj,
      ];
  BrandInfotwoTwoState copyWith(
      {BrandInfotwoTwoModel? brandInfotwoTwoModelObj}) {
    return BrandInfotwoTwoState(
      brandInfotwoTwoModelObj:
          brandInfotwoTwoModelObj ?? this.brandInfotwoTwoModelObj,
    );
  }
}
