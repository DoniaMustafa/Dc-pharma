// ignore_for_file: must_be_immutable

part of 'brand_infotwo_sixteen_bloc.dart';

/// Represents the state of BrandInfotwoSixteen in the application.
class BrandInfotwoSixteenState extends Equatable {
  BrandInfotwoSixteenState({
    this.firstNameController,
    this.productDescriptionController,
    this.expiryDateController,
    this.priceController,
    this.quantityController,
    this.selectedDropDownValue,
    this.brandInfotwoSixteenModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? productDescriptionController;

  TextEditingController? expiryDateController;

  TextEditingController? priceController;

  TextEditingController? quantityController;

  SelectionPopupModel? selectedDropDownValue;

  BrandInfotwoSixteenModel? brandInfotwoSixteenModelObj;

  @override
  List<Object?> get props => [
        firstNameController,
        productDescriptionController,
        expiryDateController,
        priceController,
        quantityController,
        selectedDropDownValue,
        brandInfotwoSixteenModelObj,
      ];
  BrandInfotwoSixteenState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? productDescriptionController,
    TextEditingController? expiryDateController,
    TextEditingController? priceController,
    TextEditingController? quantityController,
    SelectionPopupModel? selectedDropDownValue,
    BrandInfotwoSixteenModel? brandInfotwoSixteenModelObj,
  }) {
    return BrandInfotwoSixteenState(
      firstNameController: firstNameController ?? this.firstNameController,
      productDescriptionController:
          productDescriptionController ?? this.productDescriptionController,
      expiryDateController: expiryDateController ?? this.expiryDateController,
      priceController: priceController ?? this.priceController,
      quantityController: quantityController ?? this.quantityController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      brandInfotwoSixteenModelObj:
          brandInfotwoSixteenModelObj ?? this.brandInfotwoSixteenModelObj,
    );
  }
}
