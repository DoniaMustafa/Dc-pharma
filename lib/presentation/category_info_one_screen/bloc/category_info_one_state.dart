// ignore_for_file: must_be_immutable

part of 'category_info_one_bloc.dart';

/// Represents the state of CategoryInfoOne in the application.
class CategoryInfoOneState extends Equatable {
  CategoryInfoOneState({
    this.radioGroup = "",
    this.categoryInfoOneModelObj,
  });

  CategoryInfoOneModel? categoryInfoOneModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        categoryInfoOneModelObj,
      ];
  CategoryInfoOneState copyWith({
    String? radioGroup,
    CategoryInfoOneModel? categoryInfoOneModelObj,
  }) {
    return CategoryInfoOneState(
      radioGroup: radioGroup ?? this.radioGroup,
      categoryInfoOneModelObj:
          categoryInfoOneModelObj ?? this.categoryInfoOneModelObj,
    );
  }
}
