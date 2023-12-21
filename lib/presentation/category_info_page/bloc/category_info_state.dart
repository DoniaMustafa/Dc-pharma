// ignore_for_file: must_be_immutable

part of 'category_info_bloc.dart';

/// Represents the state of CategoryInfo in the application.
class CategoryInfoState extends Equatable {
  CategoryInfoState({this.categoryInfoModelObj});

  CategoryInfoModel? categoryInfoModelObj;

  @override
  List<Object?> get props => [
        categoryInfoModelObj,
      ];
  CategoryInfoState copyWith({CategoryInfoModel? categoryInfoModelObj}) {
    return CategoryInfoState(
      categoryInfoModelObj: categoryInfoModelObj ?? this.categoryInfoModelObj,
    );
  }
}
