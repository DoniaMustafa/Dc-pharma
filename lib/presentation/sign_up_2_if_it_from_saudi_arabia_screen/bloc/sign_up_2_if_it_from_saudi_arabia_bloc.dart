import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/passwordcomponent_item_model.dart';import 'package:drfarama/presentation/sign_up_2_if_it_from_saudi_arabia_screen/models/sign_up_2_if_it_from_saudi_arabia_model.dart';part 'sign_up_2_if_it_from_saudi_arabia_event.dart';part 'sign_up_2_if_it_from_saudi_arabia_state.dart';/// A bloc that manages the state of a SignUp2IfItFromSaudiArabia according to the event that is dispatched to it.
class SignUp2IfItFromSaudiArabiaBloc extends Bloc<SignUp2IfItFromSaudiArabiaEvent, SignUp2IfItFromSaudiArabiaState> {SignUp2IfItFromSaudiArabiaBloc(SignUp2IfItFromSaudiArabiaState initialState) : super(initialState) { on<SignUp2IfItFromSaudiArabiaInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUp2IfItFromSaudiArabiaState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
List<PasswordcomponentItemModel> fillPasswordcomponentItemList() { return [PasswordcomponentItemModel(confirmPasswordImage: ImageConstant.imgLocation, confirmPasswordText: "confirm password", showPasswordImage: ImageConstant.imgEye)]; } 
_onInitialize(SignUp2IfItFromSaudiArabiaInitialEvent event, Emitter<SignUp2IfItFromSaudiArabiaState> emit, ) async  { emit(state.copyWith(phoneController: TextEditingController(), emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); emit(state.copyWith(signUp2IfItFromSaudiArabiaModelObj: state.signUp2IfItFromSaudiArabiaModelObj?.copyWith(passwordcomponentItemList: fillPasswordcomponentItemList()))); } 
 }