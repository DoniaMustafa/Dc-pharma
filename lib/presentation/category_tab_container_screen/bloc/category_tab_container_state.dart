// ignore_for_file: must_be_immutable

part of 'category_tab_container_bloc.dart';

/// Represents the state of CategoryTabContainer in the application.
class CategoryTabContainerState extends Equatable {
  CategoryTabContainerState({
    this.searchController,
    this.categoryTabContainerModelObj,
  });

  TextEditingController? searchController;

  CategoryTabContainerModel? categoryTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        categoryTabContainerModelObj,
      ];
  CategoryTabContainerState copyWith({
    TextEditingController? searchController,
    CategoryTabContainerModel? categoryTabContainerModelObj,
  }) {
    return CategoryTabContainerState(
      searchController: searchController ?? this.searchController,
      categoryTabContainerModelObj:
          categoryTabContainerModelObj ?? this.categoryTabContainerModelObj,
    );
  }
}
