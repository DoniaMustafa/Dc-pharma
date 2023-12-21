// ignore_for_file: must_be_immutable

part of 'brand_infotwo_thirteen_bloc.dart';

/// Represents the state of BrandInfotwoThirteen in the application.
class BrandInfotwoThirteenState extends Equatable {
  BrandInfotwoThirteenState({this.brandInfotwoThirteenModelObj});

  BrandInfotwoThirteenModel? brandInfotwoThirteenModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoThirteenModelObj,
      ];
  BrandInfotwoThirteenState copyWith(
      {BrandInfotwoThirteenModel? brandInfotwoThirteenModelObj}) {
    return BrandInfotwoThirteenState(
      brandInfotwoThirteenModelObj:
          brandInfotwoThirteenModelObj ?? this.brandInfotwoThirteenModelObj,
    );
  }
}
