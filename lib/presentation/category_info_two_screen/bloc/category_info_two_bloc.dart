import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard2_item_model.dart';
import 'package:drfarama/presentation/category_info_two_screen/models/category_info_two_model.dart';
part 'category_info_two_event.dart';
part 'category_info_two_state.dart';

/// A bloc that manages the state of a CategoryInfoTwo according to the event that is dispatched to it.
class CategoryInfoTwoBloc
    extends Bloc<CategoryInfoTwoEvent, CategoryInfoTwoState> {
  CategoryInfoTwoBloc(CategoryInfoTwoState initialState) : super(initialState) {
    on<CategoryInfoTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryInfoTwoInitialEvent event,
    Emitter<CategoryInfoTwoState> emit,
  ) async {
    emit(state.copyWith(
        categoryInfoTwoModelObj: state.categoryInfoTwoModelObj?.copyWith(
      productcard2ItemList: fillProductcard2ItemList(),
    )));
  }

  List<Productcard2ItemModel> fillProductcard2ItemList() {
    return [
      Productcard2ItemModel(
          discountText: "-15%",
          favoriteIcon: ImageConstant.imgFavorite,
          productImage: ImageConstant.imgDownload7RemovebgPreview,
          productName: "panadol advace exs....",
          companyName: "from : gsk company",
          ratingIcon: ImageConstant.imgSignal,
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          priceText1: "235,00",
          priceText2: "335,00"),
      Productcard2ItemModel(
          discountText: "-15%",
          favoriteIcon: ImageConstant.imgFavorite,
          productImage: ImageConstant.imgDownload7RemovebgPreview,
          productName: "panadol advace exs....",
          companyName: "from : gsk company",
          ratingIcon: ImageConstant.imgSignal,
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          priceText1: "235,00",
          priceText2: "335,00"),
      Productcard2ItemModel(
          discountText: "-15%",
          favoriteIcon: ImageConstant.imgFavorite,
          productImage: ImageConstant.imgDownload7RemovebgPreview,
          productName: "panadol advace exs....",
          companyName: "from : gsk company",
          ratingIcon: ImageConstant.imgSignal,
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          priceText1: "235,00",
          priceText2: "335,00"),
      Productcard2ItemModel(
          discountText: "-15%",
          favoriteIcon: ImageConstant.imgFavorite,
          productImage: ImageConstant.imgDownload7RemovebgPreview,
          productName: "panadol advace exs....",
          companyName: "from : gsk company",
          ratingIcon: ImageConstant.imgSignal,
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          priceText1: "235,00",
          priceText2: "335,00")
    ];
  }
}
