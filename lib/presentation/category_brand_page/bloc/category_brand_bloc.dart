import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/grid_item_model.dart';
import 'package:drfarama/presentation/category_brand_page/models/category_brand_model.dart';
part 'category_brand_event.dart';
part 'category_brand_state.dart';

/// A bloc that manages the state of a CategoryBrand according to the event that is dispatched to it.
class CategoryBrandBloc extends Bloc<CategoryBrandEvent, CategoryBrandState> {
  CategoryBrandBloc(CategoryBrandState initialState) : super(initialState) {
    on<CategoryBrandInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryBrandInitialEvent event,
    Emitter<CategoryBrandState> emit,
  ) async {
    emit(state.copyWith(
        categoryBrandModelObj: state.categoryBrandModelObj?.copyWith(
      gridItemList: fillGridItemList(),
    )));
  }

  List<GridItemModel> fillGridItemList() {
    return [
      GridItemModel(image: ImageConstant.imgRectangle18648, text: "sanofi"),
      GridItemModel(image: ImageConstant.imgRectangle18649, text: "merck"),
      GridItemModel(image: ImageConstant.imgRectangle18650, text: "gsk"),
      GridItemModel(image: ImageConstant.imgRectangle18648, text: "sanofi"),
      GridItemModel(image: ImageConstant.imgRectangle18649, text: "merck"),
      GridItemModel(image: ImageConstant.imgRectangle18650, text: "gsk"),
      GridItemModel(image: ImageConstant.imgRectangle18648, text: "sanofi"),
      GridItemModel(image: ImageConstant.imgRectangle18649, text: "merck"),
      GridItemModel(image: ImageConstant.imgRectangle18650, text: "gsk")
    ];
  }
}
