import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slider1_item_model.dart';
import '../models/merkcomponent4_item_model.dart';
import '../models/productcard9_item_model.dart';
import 'package:drfarama/presentation/home_three_screen/models/home_three_model.dart';
part 'home_three_event.dart';
part 'home_three_state.dart';

/// A bloc that manages the state of a HomeThree according to the event that is dispatched to it.
class HomeThreeBloc extends Bloc<HomeThreeEvent, HomeThreeState> {
  HomeThreeBloc(HomeThreeState initialState) : super(initialState) {
    on<HomeThreeInitialEvent>(_onInitialize);
  }

  List<Slider1ItemModel> fillSlider1ItemList() {
    return [
      Slider1ItemModel(
          img: ImageConstant.imgImg, gradient: ImageConstant.imgGradient1),
      Slider1ItemModel(
          img: ImageConstant.imgImg, gradient: ImageConstant.imgGradient)
    ];
  }

  List<Merkcomponent4ItemModel> fillMerkcomponent4ItemList() {
    return [
      Merkcomponent4ItemModel(
          drugIcon: ImageConstant.img3668843DrugsM,
          medicineText: "medicines",
          itemText: "601 Items"),
      Merkcomponent4ItemModel(
          drugIcon: ImageConstant.img10218895Stetho,
          medicineText: "Medical Supplies",
          itemText: "601 Items"),
      Merkcomponent4ItemModel(
          drugIcon: ImageConstant.img753936NailsSa,
          medicineText: "Beauty Tools",
          itemText: "601 Items")
    ];
  }

  List<Productcard9ItemModel> fillProductcard9ItemList() {
    return [
      Productcard9ItemModel(
          discountText: "-15%",
          productName: "panadol advace",
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00",
          addToCartButton: ImageConstant.imgCart),
      Productcard9ItemModel(
          discountText: "-15%",
          productName: "panadol advace",
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00"),
      Productcard9ItemModel(
          discountText: "-15%",
          productName: "panadol advace",
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00",
          addToCartButton: ImageConstant.imgCartWhiteA700),
      Productcard9ItemModel(
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
    HomeThreeInitialEvent event,
    Emitter<HomeThreeState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeThreeModelObj: state.homeThreeModelObj?.copyWith(
      slider1ItemList: fillSlider1ItemList(),
      merkcomponent4ItemList: fillMerkcomponent4ItemList(),
      productcard9ItemList: fillProductcard9ItemList(),
    )));
  }
}
