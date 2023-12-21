// ignore_for_file: must_be_immutable

part of 'brand_infotwo_nine_bloc.dart';

/// Represents the state of BrandInfotwoNine in the application.
class BrandInfotwoNineState extends Equatable {
  BrandInfotwoNineState({this.brandInfotwoNineModelObj});

  BrandInfotwoNineModel? brandInfotwoNineModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoNineModelObj,
      ];
  BrandInfotwoNineState copyWith(
      {BrandInfotwoNineModel? brandInfotwoNineModelObj}) {
    return BrandInfotwoNineState(
      brandInfotwoNineModelObj:
          brandInfotwoNineModelObj ?? this.brandInfotwoNineModelObj,
    );
  }
}
