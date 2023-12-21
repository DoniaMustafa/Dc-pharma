import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofileslider1_item_model.dart';
import '../models/merkcomponent3_item_model.dart';
import '../models/productcardgrid1_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_sixty_screen/models/iphone_11_pro_max_sixty_model.dart';
part 'iphone_11_pro_max_sixty_event.dart';
part 'iphone_11_pro_max_sixty_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSixty according to the event that is dispatched to it.
class Iphone11ProMaxSixtyBloc
    extends Bloc<Iphone11ProMaxSixtyEvent, Iphone11ProMaxSixtyState> {
  Iphone11ProMaxSixtyBloc(Iphone11ProMaxSixtyState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixtyInitialEvent>(_onInitialize);
  }

  List<Userprofileslider1ItemModel> fillUserprofileslider1ItemList() {
    return [
      Userprofileslider1ItemModel(
          userImage: ImageConstant.imgImg,
          gradientImage: ImageConstant.imgGradient,
          whatsappImage: ImageConstant.imgMaskGroup,
          reachRateText:
              "With a reach rate of more than 200 pharmaceutical companies"),
      Userprofileslider1ItemModel(userImage: ImageConstant.imgGradient182x287),
      Userprofileslider1ItemModel(
          userImage: ImageConstant.imgImg,
          gradientImage: ImageConstant.imgGradient1)
    ];
  }

  List<Merkcomponent3ItemModel> fillMerkcomponent3ItemList() {
    return [
      Merkcomponent3ItemModel(
          drugIcon: ImageConstant.img3668843DrugsM,
          medicineText: "medicines",
          itemCountText: "601 Items"),
      Merkcomponent3ItemModel(
          drugIcon: ImageConstant.img10218895Stetho,
          medicineText: "Medical Supplies",
          itemCountText: "601 Items"),
      Merkcomponent3ItemModel(
          drugIcon: ImageConstant.img753936NailsSa,
          medicineText: "Beauty Tools",
          itemCountText: "601 Items")
    ];
  }

  List<Productcardgrid1ItemModel> fillProductcardgrid1ItemList() {
    return [
      Productcardgrid1ItemModel(
          discountText: "-15%",
          productName: "panadol advace",
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00",
          addToCartButton: ImageConstant.imgCartWhiteA700),
      Productcardgrid1ItemModel(
          productCompany: "from : gsk company",
          ratingText: "4.5",
          reviewText: "(1045 Reviews)",
          originalPrice: "335,00",
          discountedPrice: "235,00")
    ];
  }

  _onInitialize(
    Iphone11ProMaxSixtyInitialEvent event,
    Emitter<Iphone11ProMaxSixtyState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxSixtyModelObj:
            state.iphone11ProMaxSixtyModelObj?.copyWith(
      userprofileslider1ItemList: fillUserprofileslider1ItemList(),
      merkcomponent3ItemList: fillMerkcomponent3ItemList(),
      productcardgrid1ItemList: fillProductcardgrid1ItemList(),
    )));
  }
}
