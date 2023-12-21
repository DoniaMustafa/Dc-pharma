// ignore_for_file: must_be_immutable

part of 'brand_infotwo_four_tab_container_bloc.dart';

/// Represents the state of BrandInfotwoFourTabContainer in the application.
class BrandInfotwoFourTabContainerState extends Equatable {
  BrandInfotwoFourTabContainerState(
      {this.brandInfotwoFourTabContainerModelObj});

  BrandInfotwoFourTabContainerModel? brandInfotwoFourTabContainerModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoFourTabContainerModelObj,
      ];
  BrandInfotwoFourTabContainerState copyWith(
      {BrandInfotwoFourTabContainerModel?
          brandInfotwoFourTabContainerModelObj}) {
    return BrandInfotwoFourTabContainerState(
      brandInfotwoFourTabContainerModelObj:
          brandInfotwoFourTabContainerModelObj ??
              this.brandInfotwoFourTabContainerModelObj,
    );
  }
}
