// ignore_for_file: must_be_immutable

part of 'brand_infotwo_six_bloc.dart';

/// Represents the state of BrandInfotwoSix in the application.
class BrandInfotwoSixState extends Equatable {
  BrandInfotwoSixState({
    this.nameController,
    this.addAnotherOneController,
    this.brandInfotwoSixModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? addAnotherOneController;

  BrandInfotwoSixModel? brandInfotwoSixModelObj;

  @override
  List<Object?> get props => [
        nameController,
        addAnotherOneController,
        brandInfotwoSixModelObj,
      ];
  BrandInfotwoSixState copyWith({
    TextEditingController? nameController,
    TextEditingController? addAnotherOneController,
    BrandInfotwoSixModel? brandInfotwoSixModelObj,
  }) {
    return BrandInfotwoSixState(
      nameController: nameController ?? this.nameController,
      addAnotherOneController:
          addAnotherOneController ?? this.addAnotherOneController,
      brandInfotwoSixModelObj:
          brandInfotwoSixModelObj ?? this.brandInfotwoSixModelObj,
    );
  }
}
