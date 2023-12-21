// ignore_for_file: must_be_immutable

part of 'brand_infotwo_nineteen_bloc.dart';

/// Represents the state of BrandInfotwoNineteen in the application.
class BrandInfotwoNineteenState extends Equatable {
  BrandInfotwoNineteenState({this.brandInfotwoNineteenModelObj});

  BrandInfotwoNineteenModel? brandInfotwoNineteenModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoNineteenModelObj,
      ];
  BrandInfotwoNineteenState copyWith(
      {BrandInfotwoNineteenModel? brandInfotwoNineteenModelObj}) {
    return BrandInfotwoNineteenState(
      brandInfotwoNineteenModelObj:
          brandInfotwoNineteenModelObj ?? this.brandInfotwoNineteenModelObj,
    );
  }
}
