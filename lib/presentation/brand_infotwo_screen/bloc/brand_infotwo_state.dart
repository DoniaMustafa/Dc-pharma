// ignore_for_file: must_be_immutable

part of 'brand_infotwo_bloc.dart';

/// Represents the state of BrandInfotwo in the application.
class BrandInfotwoState extends Equatable {
  BrandInfotwoState({this.brandInfotwoModelObj});

  BrandInfotwoModel? brandInfotwoModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoModelObj,
      ];
  BrandInfotwoState copyWith({BrandInfotwoModel? brandInfotwoModelObj}) {
    return BrandInfotwoState(
      brandInfotwoModelObj: brandInfotwoModelObj ?? this.brandInfotwoModelObj,
    );
  }
}
