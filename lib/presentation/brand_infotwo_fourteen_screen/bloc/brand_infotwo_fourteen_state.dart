// ignore_for_file: must_be_immutable

part of 'brand_infotwo_fourteen_bloc.dart';

/// Represents the state of BrandInfotwoFourteen in the application.
class BrandInfotwoFourteenState extends Equatable {
  BrandInfotwoFourteenState({this.brandInfotwoFourteenModelObj});

  BrandInfotwoFourteenModel? brandInfotwoFourteenModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoFourteenModelObj,
      ];
  BrandInfotwoFourteenState copyWith(
      {BrandInfotwoFourteenModel? brandInfotwoFourteenModelObj}) {
    return BrandInfotwoFourteenState(
      brandInfotwoFourteenModelObj:
          brandInfotwoFourteenModelObj ?? this.brandInfotwoFourteenModelObj,
    );
  }
}
