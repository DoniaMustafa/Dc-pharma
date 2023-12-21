import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofileslider2_item_model.dart';
import '../models/userprofile5_item_model.dart';
import '../models/merkcomponent5_item_model.dart';
import '../models/productcardgrid2_item_model.dart';
import 'package:drfarama/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  List<Userprofileslider2ItemModel> fillUserprofileslider2ItemList() {
    return [
      Userprofileslider2ItemModel(
          userImage: ImageConstant.imgImg,
          gradientImage: ImageConstant.imgGradient,
          whatsAppImage: ImageConstant.imgMaskGroup,
          reachRateText:
              "With a reach rate of more than 200 pharmaceutical companies",
          rectangleImage: ImageConstant.imgRectangle18654,
          flashSaleText: "50% flash sale"),
      Userprofileslider2ItemModel(userImage: ImageConstant.imgGradient182x287),
      Userprofileslider2ItemModel(
          userImage: ImageConstant.imgImg,
          gradientImage: ImageConstant.imgGradient1)
    ];
  }

  List<Userprofile5ItemModel> fillUserprofile5ItemList() {
    return [
      Userprofile5ItemModel(
          userImage: ImageConstant.imgRectangle18648100x100,
          medicinesText: "medicines"),
      Userprofile5ItemModel(
          userImage: ImageConstant.imgRectangle18649100x100,
          medicinesText: "Medical Supplies"),
      Userprofile5ItemModel(
          userImage: ImageConstant.imgRectangle18650100x100,
          medicinesText: "Beauty Tools")
    ];
  }

  List<Merkcomponent5ItemModel> fillMerkcomponent5ItemList() {
    return [
      Merkcomponent5ItemModel(
          groupIcon: ImageConstant.imgGroup14,
          companyName: "sanofi",
          itemCount: "601 Items"),
      Merkcomponent5ItemModel(
          groupIcon: ImageConstant.imgGroup1456x56,
          companyName: "merck",
          itemCount: "601 Items"),
      Merkcomponent5ItemModel(
          groupIcon: ImageConstant.imgGroup141,
          companyName: "gsk",
          itemCount: "601 Items"),
      Merkcomponent5ItemModel(
          groupIcon: ImageConstant.imgGroup14,
          companyName: "sanofi",
          itemCount: "601 Items")
    ];
  }

  List<Productcardgrid2ItemModel> fillProductcardgrid2ItemList() {
    return [
      Productcardgrid2ItemModel(
          widget: "-15%",
          productName: "panadol advace",
          productDescription: "from : gsk company",
          ratingValue: "4.5",
          reviewCount: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00",
          addToCartButton: ImageConstant.imgCartWhiteA700),
      Productcardgrid2ItemModel(
          widget: "-15%",
          productName: "panadol advace",
          productDescription: "from : gsk company",
          ratingValue: "4.5",
          reviewCount: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00"),
      Productcardgrid2ItemModel(
          widget: "-15%",
          productName: "panadol advace",
          productDescription: "from : gsk company",
          ratingValue: "4.5",
          reviewCount: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00",
          addToCartButton: ImageConstant.imgCartWhiteA700)
    ];
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
      userprofileslider2ItemList: fillUserprofileslider2ItemList(),
      userprofile5ItemList: fillUserprofile5ItemList(),
      merkcomponent5ItemList: fillMerkcomponent5ItemList(),
      productcardgrid2ItemList: fillProductcardgrid2ItemList(),
    )));
  }
}
