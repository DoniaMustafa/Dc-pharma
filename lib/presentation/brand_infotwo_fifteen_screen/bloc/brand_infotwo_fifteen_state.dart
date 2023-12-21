// ignore_for_file: must_be_immutable

part of 'brand_infotwo_fifteen_bloc.dart';

/// Represents the state of BrandInfotwoFifteen in the application.
class BrandInfotwoFifteenState extends Equatable {
  BrandInfotwoFifteenState({
    this.messageEditTextController,
    this.brandInfotwoFifteenModelObj,
  });

  TextEditingController? messageEditTextController;

  BrandInfotwoFifteenModel? brandInfotwoFifteenModelObj;

  @override
  List<Object?> get props => [
        messageEditTextController,
        brandInfotwoFifteenModelObj,
      ];
  BrandInfotwoFifteenState copyWith({
    TextEditingController? messageEditTextController,
    BrandInfotwoFifteenModel? brandInfotwoFifteenModelObj,
  }) {
    return BrandInfotwoFifteenState(
      messageEditTextController:
          messageEditTextController ?? this.messageEditTextController,
      brandInfotwoFifteenModelObj:
          brandInfotwoFifteenModelObj ?? this.brandInfotwoFifteenModelObj,
    );
  }
}
