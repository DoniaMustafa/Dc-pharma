// ignore_for_file: must_be_immutable

part of 'brand_infotwo_five_bloc.dart';

/// Represents the state of BrandInfotwoFive in the application.
class BrandInfotwoFiveState extends Equatable {
  BrandInfotwoFiveState({this.brandInfotwoFiveModelObj});

  BrandInfotwoFiveModel? brandInfotwoFiveModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoFiveModelObj,
      ];
  BrandInfotwoFiveState copyWith(
      {BrandInfotwoFiveModel? brandInfotwoFiveModelObj}) {
    return BrandInfotwoFiveState(
      brandInfotwoFiveModelObj:
          brandInfotwoFiveModelObj ?? this.brandInfotwoFiveModelObj,
    );
  }
}
