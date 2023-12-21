// ignore_for_file: must_be_immutable

part of 'brand_infotwo_one_bloc.dart';

/// Represents the state of BrandInfotwoOne in the application.
class BrandInfotwoOneState extends Equatable {
  BrandInfotwoOneState({this.brandInfotwoOneModelObj});

  BrandInfotwoOneModel? brandInfotwoOneModelObj;

  @override
  List<Object?> get props => [
        brandInfotwoOneModelObj,
      ];
  BrandInfotwoOneState copyWith(
      {BrandInfotwoOneModel? brandInfotwoOneModelObj}) {
    return BrandInfotwoOneState(
      brandInfotwoOneModelObj:
          brandInfotwoOneModelObj ?? this.brandInfotwoOneModelObj,
    );
  }
}
