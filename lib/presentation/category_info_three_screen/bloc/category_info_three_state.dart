// ignore_for_file: must_be_immutable

part of 'category_info_three_bloc.dart';

/// Represents the state of CategoryInfoThree in the application.
class CategoryInfoThreeState extends Equatable {
  CategoryInfoThreeState({
    this.searchController,
    this.categoryInfoThreeModelObj,
  });

  TextEditingController? searchController;

  CategoryInfoThreeModel? categoryInfoThreeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        categoryInfoThreeModelObj,
      ];
  CategoryInfoThreeState copyWith({
    TextEditingController? searchController,
    CategoryInfoThreeModel? categoryInfoThreeModelObj,
  }) {
    return CategoryInfoThreeState(
      searchController: searchController ?? this.searchController,
      categoryInfoThreeModelObj:
          categoryInfoThreeModelObj ?? this.categoryInfoThreeModelObj,
    );
  }
}
