import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slider_item_model.dart';
import '../models/merkcomponent1_item_model.dart';
import '../models/productcard8_item_model.dart';
import 'package:drfarama/presentation/home_two_screen/models/home_two_model.dart';
part 'home_two_event.dart';
part 'home_two_state.dart';

/// A bloc that manages the state of a HomeTwo according to the event that is dispatched to it.
class HomeTwoBloc extends Bloc<HomeTwoEvent, HomeTwoState> {
  HomeTwoBloc(HomeTwoState initialState) : super(initialState) {
    on<HomeTwoInitialEvent>(_onInitialize);
  }

  List<SliderItemModel> fillSliderItemList() {
    return [
      SliderItemModel(
          img: ImageConstant.imgImg, gradient: ImageConstant.imgGradient1),
      SliderItemModel(
          img: ImageConstant.imgImg, gradient: ImageConstant.imgGradient)
    ];
  }

  List<Merkcomponent1ItemModel> fillMerkcomponent1ItemList() {
    return [
      Merkcomponent1ItemModel(
          drugIcon: ImageConstant.img3668843DrugsM,
          medicineText: "medicines",
          itemText: "601 Items"),
      Merkcomponent1ItemModel(
          drugIcon: ImageConstant.img10218895Stetho,
          medicineText: "Medical Supplies",
          itemText: "601 Items"),
      Merkcomponent1ItemModel(
          drugIcon: ImageConstant.img753936NailsSa,
          medicineText: "Beauty Tools",
          itemText: "601 Items")
    ];
  }

  List<Productcard8ItemModel> fillProductcard8ItemList() {
    return [
      Productcard8ItemModel(
          discountText: "-15%",
          productName: "panadol advace",
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00",
          addToCartButton: ImageConstant.imgCart),
      Productcard8ItemModel(
          discountText: "-15%",
          productName: "panadol advace",
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00"),
      Productcard8ItemModel(
          discountText: "-15%",
          productName: "panadol advace",
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00",
          addToCartButton: ImageConstant.imgCartWhiteA700),
      Productcard8ItemModel(
          discountText: "-15%",
          productName: "panadol advace",
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00",
          addToCartButton: ImageConstant.imgCartWhiteA700)
    ];
  }

  _onInitialize(
    HomeTwoInitialEvent event,
    Emitter<HomeTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeTwoModelObj: state.homeTwoModelObj?.copyWith(
      sliderItemList: fillSliderItemList(),
      merkcomponent1ItemList: fillMerkcomponent1ItemList(),
      productcard8ItemList: fillProductcard8ItemList(),
    )));
  }
}
