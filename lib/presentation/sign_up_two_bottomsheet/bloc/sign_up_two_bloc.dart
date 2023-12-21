import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/signuptwo_item_model.dart';import 'package:drfarama/presentation/sign_up_two_bottomsheet/models/sign_up_two_model.dart';part 'sign_up_two_event.dart';part 'sign_up_two_state.dart';/// A bloc that manages the state of a SignUpTwo according to the event that is dispatched to it.
class SignUpTwoBloc extends Bloc<SignUpTwoEvent, SignUpTwoState> {SignUpTwoBloc(SignUpTwoState initialState) : super(initialState) { on<SignUpTwoInitialEvent>(_onInitialize); }

_onInitialize(SignUpTwoInitialEvent event, Emitter<SignUpTwoState> emit, ) async  { emit(state.copyWith(signUpTwoModelObj: state.signUpTwoModelObj?.copyWith(signuptwoItemList: fillSignuptwoItemList()))); } 
List<SignuptwoItemModel> fillSignuptwoItemList() { return [SignuptwoItemModel(lab: ImageConstant.img2890580AiArtificialPrimary49x49, lab1: "lab"), SignuptwoItemModel(lab: ImageConstant.imgFacebook, lab1: "hospital"), SignuptwoItemModel(lab1: "pharmacy"), SignuptwoItemModel(lab1: "clinic")]; } 
 }
