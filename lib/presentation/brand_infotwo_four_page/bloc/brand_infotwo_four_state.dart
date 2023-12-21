// ignore_for_file: must_be_immutable

part of 'brand_infotwo_four_bloc.dart';

/// Represents the state of BrandInfotwoFour in the application.
class BrandInfotwoFourState extends Equatable {
  BrandInfotwoFourState({this.brandInfotwoFourModelObj});

  BrandInfotwoFourModel? brandInfotwoFourModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoFourModelObj,
      ];
  BrandInfotwoFourState copyWith(
      {BrandInfotwoFourModel? brandInfotwoFourModelObj}) {
    return BrandInfotwoFourState(
      brandInfotwoFourModelObj:
          brandInfotwoFourModelObj ?? this.brandInfotwoFourModelObj,
    );
  }
}
