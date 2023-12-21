// ignore_for_file: must_be_immutable

part of 'category_info_two_bloc.dart';

/// Represents the state of CategoryInfoTwo in the application.
class CategoryInfoTwoState extends Equatable {
  CategoryInfoTwoState({this.categoryInfoTwoModelObj});

  CategoryInfoTwoModel? categoryInfoTwoModelObj;

  @override
  List<Object?> get props => [
        categoryInfoTwoModelObj,
      ];
  CategoryInfoTwoState copyWith(
      {CategoryInfoTwoModel? categoryInfoTwoModelObj}) {
    return CategoryInfoTwoState(
      categoryInfoTwoModelObj:
          categoryInfoTwoModelObj ?? this.categoryInfoTwoModelObj,
    );
  }
}
