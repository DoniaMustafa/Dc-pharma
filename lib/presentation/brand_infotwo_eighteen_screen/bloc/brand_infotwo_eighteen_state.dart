// ignore_for_file: must_be_immutable

part of 'brand_infotwo_eighteen_bloc.dart';

/// Represents the state of BrandInfotwoEighteen in the application.
class BrandInfotwoEighteenState extends Equatable {
  BrandInfotwoEighteenState({
    this.nameController,
    this.serviceDescriptionController,
    this.brandInfotwoEighteenModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? serviceDescriptionController;

  BrandInfotwoEighteenModel? brandInfotwoEighteenModelObj;

  @override
  List<Object?> get props => [
        nameController,
        serviceDescriptionController,
        brandInfotwoEighteenModelObj,
      ];
  BrandInfotwoEighteenState copyWith({
    TextEditingController? nameController,
    TextEditingController? serviceDescriptionController,
    BrandInfotwoEighteenModel? brandInfotwoEighteenModelObj,
  }) {
    return BrandInfotwoEighteenState(
      nameController: nameController ?? this.nameController,
      serviceDescriptionController:
          serviceDescriptionController ?? this.serviceDescriptionController,
      brandInfotwoEighteenModelObj:
          brandInfotwoEighteenModelObj ?? this.brandInfotwoEighteenModelObj,
    );
  }
}
