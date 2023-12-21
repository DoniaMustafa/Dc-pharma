import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/userprofile1_item_model.dart';import '../models/notification_item_model.dart';import 'package:drfarama/presentation/category_info_one_screen/models/category_info_one_model.dart';part 'category_info_one_event.dart';part 'category_info_one_state.dart';/// A bloc that manages the state of a CategoryInfoOne according to the event that is dispatched to it.
class CategoryInfoOneBloc extends Bloc<CategoryInfoOneEvent, CategoryInfoOneState> {CategoryInfoOneBloc(CategoryInfoOneState initialState) : super(initialState) { on<CategoryInfoOneInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<CategoryInfoOneState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
List<Userprofile1ItemModel> fillUserprofile1ItemList() { return [Userprofile1ItemModel(twentyText: "20 ", egpText: "EGP", oneThousandText: "1000"), Userprofile1ItemModel(twentyText: "100", egpText: "EGP", oneThousandText: "2500"), Userprofile1ItemModel(twentyText: "200", egpText: "EGP", oneThousandText: "3000")]; } 
List<NotificationItemModel> fillNotificationItemList() { return [NotificationItemModel(televisionImage: ImageConstant.imgTelevision, messageText: "1000 gift points were obtained on your latest bill", timestampText: "30 may 2023 - 6:55 PM", pointText: "+1000\npoint"), NotificationItemModel(televisionImage: ImageConstant.imgTelevision, messageText: "1000 gift points were obtained on your bill", timestampText: "30 may 2023 - 6:55 PM", pointText: "+1000\npoint")]; } 
_onInitialize(CategoryInfoOneInitialEvent event, Emitter<CategoryInfoOneState> emit, ) async  { emit(state.copyWith(radioGroup: "")); emit(state.copyWith(categoryInfoOneModelObj: state.categoryInfoOneModelObj?.copyWith(userprofile1ItemList: fillUserprofile1ItemList(), notificationItemList: fillNotificationItemList()))); } 
 }
