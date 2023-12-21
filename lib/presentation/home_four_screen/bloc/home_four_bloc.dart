import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/userprofile_item_model.dart';import '../models/merkcomponent_item_model.dart';import '../models/productcard_item_model.dart';import 'package:drfarama/presentation/home_four_screen/models/home_four_model.dart';part 'home_four_event.dart';part 'home_four_state.dart';/// A bloc that manages the state of a HomeFour according to the event that is dispatched to it.
class HomeFourBloc extends Bloc<HomeFourEvent, HomeFourState> {HomeFourBloc(HomeFourState initialState) : super(initialState) { on<HomeFourInitialEvent>(_onInitialize); }

List<UserprofileItemModel> fillUserprofileItemList() { return [UserprofileItemModel(userImage: ImageConstant.imgImg, gradientImage: ImageConstant.imgGradient, whatsappImage: ImageConstant.imgMaskGroup, reachRateText: "With a reach rate of more than 200 pharmaceutical companies"), UserprofileItemModel(userImage: ImageConstant.imgGradient182x287), UserprofileItemModel(userImage: ImageConstant.imgImg, gradientImage: ImageConstant.imgGradient1)]; } 
List<MerkcomponentItemModel> fillMerkcomponentItemList() { return [MerkcomponentItemModel(drugIcon: ImageConstant.img3668843DrugsM, medicinesText: "medicines", itemsText: "601 Items"), MerkcomponentItemModel(drugIcon: ImageConstant.img10218895Stetho, medicinesText: "Medical Supplies", itemsText: "601 Items"), MerkcomponentItemModel(drugIcon: ImageConstant.img753936NailsSa, medicinesText: "Beauty Tools", itemsText: "601 Items")]; } 
List<ProductcardItemModel> fillProductcardItemList() { return [ProductcardItemModel(widget: "-15%", productName: "panadol advace exs....", productDescription: "from : gsk company", ratingValue: "4.5", reviewCount: "(1045 Reviews)", price1: "235,00", price2: "335,00")]; } 
_onInitialize(HomeFourInitialEvent event, Emitter<HomeFourState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController(), sliderIndex: 0)); emit(state.copyWith(homeFourModelObj: state.homeFourModelObj?.copyWith(userprofileItemList: fillUserprofileItemList(), merkcomponentItemList: fillMerkcomponentItemList(), productcardItemList: fillProductcardItemList()))); } 
 }