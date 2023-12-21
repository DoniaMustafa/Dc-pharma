// ignore_for_file: must_be_immutable

part of 'brand_infotwo_eleven_bloc.dart';

/// Represents the state of BrandInfotwoEleven in the application.
class BrandInfotwoElevenState extends Equatable {
  BrandInfotwoElevenState({this.brandInfotwoElevenModelObj});

  BrandInfotwoElevenModel? brandInfotwoElevenModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoElevenModelObj,
      ];
  BrandInfotwoElevenState copyWith(
      {BrandInfotwoElevenModel? brandInfotwoElevenModelObj}) {
    return BrandInfotwoElevenState(
      brandInfotwoElevenModelObj:
          brandInfotwoElevenModelObj ?? this.brandInfotwoElevenModelObj,
    );
  }
}
