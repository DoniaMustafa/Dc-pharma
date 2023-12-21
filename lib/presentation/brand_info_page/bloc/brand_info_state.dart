// ignore_for_file: must_be_immutable

part of 'brand_info_bloc.dart';

/// Represents the state of BrandInfo in the application.
class BrandInfoState extends Equatable {
  BrandInfoState({this.brandInfoModelObj});

  BrandInfoModel? brandInfoModelObj;

  @override
  List<Object?> get props => [
        brandInfoModelObj,
      ];
  BrandInfoState copyWith({BrandInfoModel? brandInfoModelObj}) {
    return BrandInfoState(
      brandInfoModelObj: brandInfoModelObj ?? this.brandInfoModelObj,
    );
  }
}
