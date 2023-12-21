// ignore_for_file: must_be_immutable

part of 'brand_infotwo_ten_bloc.dart';

/// Represents the state of BrandInfotwoTen in the application.
class BrandInfotwoTenState extends Equatable {
  BrandInfotwoTenState({
    this.nameController,
    this.brandInfotwoTenModelObj,
  });

  TextEditingController? nameController;

  BrandInfotwoTenModel? brandInfotwoTenModelObj;

  @override
  List<Object?> get props => [
        nameController,
        brandInfotwoTenModelObj,
      ];
  BrandInfotwoTenState copyWith({
    TextEditingController? nameController,
    BrandInfotwoTenModel? brandInfotwoTenModelObj,
  }) {
    return BrandInfotwoTenState(
      nameController: nameController ?? this.nameController,
      brandInfotwoTenModelObj:
          brandInfotwoTenModelObj ?? this.brandInfotwoTenModelObj,
    );
  }
}
