// ignore_for_file: must_be_immutable

part of 'category_info_four_bloc.dart';

/// Represents the state of CategoryInfoFour in the application.
class CategoryInfoFourState extends Equatable {
  CategoryInfoFourState({
    this.radioGroup = "",
    this.categoryInfoFourModelObj,
  });

  CategoryInfoFourModel? categoryInfoFourModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        categoryInfoFourModelObj,
      ];
  CategoryInfoFourState copyWith({
    String? radioGroup,
    CategoryInfoFourModel? categoryInfoFourModelObj,
  }) {
    return CategoryInfoFourState(
      radioGroup: radioGroup ?? this.radioGroup,
      categoryInfoFourModelObj:
          categoryInfoFourModelObj ?? this.categoryInfoFourModelObj,
    );
  }
}
