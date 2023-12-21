// ignore_for_file: must_be_immutable

part of 'brand_info_tab_container_bloc.dart';

/// Represents the state of BrandInfoTabContainer in the application.
class BrandInfoTabContainerState extends Equatable {
  BrandInfoTabContainerState({this.brandInfoTabContainerModelObj});

  BrandInfoTabContainerModel? brandInfoTabContainerModelObj;

  @override
  List<Object?> get props => [
        brandInfoTabContainerModelObj,
      ];
  BrandInfoTabContainerState copyWith(
      {BrandInfoTabContainerModel? brandInfoTabContainerModelObj}) {
    return BrandInfoTabContainerState(
      brandInfoTabContainerModelObj:
          brandInfoTabContainerModelObj ?? this.brandInfoTabContainerModelObj,
    );
  }
}
