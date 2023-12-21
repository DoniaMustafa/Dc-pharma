// ignore_for_file: must_be_immutable

part of 'brand_infotwo_twelve_bloc.dart';

/// Represents the state of BrandInfotwoTwelve in the application.
class BrandInfotwoTwelveState extends Equatable {
  BrandInfotwoTwelveState({
    this.nameController,
    this.addAnotherOneController,
    this.brandInfotwoTwelveModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? addAnotherOneController;

  BrandInfotwoTwelveModel? brandInfotwoTwelveModelObj;

  @override
  List<Object?> get props => [
        nameController,
        addAnotherOneController,
        brandInfotwoTwelveModelObj,
      ];
  BrandInfotwoTwelveState copyWith({
    TextEditingController? nameController,
    TextEditingController? addAnotherOneController,
    BrandInfotwoTwelveModel? brandInfotwoTwelveModelObj,
  }) {
    return BrandInfotwoTwelveState(
      nameController: nameController ?? this.nameController,
      addAnotherOneController:
          addAnotherOneController ?? this.addAnotherOneController,
      brandInfotwoTwelveModelObj:
          brandInfotwoTwelveModelObj ?? this.brandInfotwoTwelveModelObj,
    );
  }
}
