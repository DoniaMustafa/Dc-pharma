// ignore_for_file: must_be_immutable

part of 'category_brand_bloc.dart';

/// Represents the state of CategoryBrand in the application.
class CategoryBrandState extends Equatable {
  CategoryBrandState({this.categoryBrandModelObj});

  CategoryBrandModel? categoryBrandModelObj;

  @override
  List<Object?> get props => [
        categoryBrandModelObj,
      ];
  CategoryBrandState copyWith({CategoryBrandModel? categoryBrandModelObj}) {
    return CategoryBrandState(
      categoryBrandModelObj:
          categoryBrandModelObj ?? this.categoryBrandModelObj,
    );
  }
}
