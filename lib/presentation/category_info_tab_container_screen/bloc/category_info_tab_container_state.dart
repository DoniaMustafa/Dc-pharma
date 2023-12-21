// ignore_for_file: must_be_immutable

part of 'category_info_tab_container_bloc.dart';

/// Represents the state of CategoryInfoTabContainer in the application.
class CategoryInfoTabContainerState extends Equatable {
  CategoryInfoTabContainerState({
    this.sliderIndex = 0,
    this.categoryInfoTabContainerModelObj,
  });

  CategoryInfoTabContainerModel? categoryInfoTabContainerModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        categoryInfoTabContainerModelObj,
      ];
  CategoryInfoTabContainerState copyWith({
    int? sliderIndex,
    CategoryInfoTabContainerModel? categoryInfoTabContainerModelObj,
  }) {
    return CategoryInfoTabContainerState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      categoryInfoTabContainerModelObj: categoryInfoTabContainerModelObj ??
          this.categoryInfoTabContainerModelObj,
    );
  }
}
