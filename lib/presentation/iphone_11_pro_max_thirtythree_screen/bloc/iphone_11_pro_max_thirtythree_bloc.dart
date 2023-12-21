import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/iphone_11_pro_max_thirtythree_screen/models/iphone_11_pro_max_thirtythree_model.dart';part 'iphone_11_pro_max_thirtythree_event.dart';part 'iphone_11_pro_max_thirtythree_state.dart';/// A bloc that manages the state of a Iphone11ProMaxThirtythree according to the event that is dispatched to it.
class Iphone11ProMaxThirtythreeBloc extends Bloc<Iphone11ProMaxThirtythreeEvent, Iphone11ProMaxThirtythreeState> {Iphone11ProMaxThirtythreeBloc(Iphone11ProMaxThirtythreeState initialState) : super(initialState) { on<Iphone11ProMaxThirtythreeInitialEvent>(_onInitialize); }

_onInitialize(Iphone11ProMaxThirtythreeInitialEvent event, Emitter<Iphone11ProMaxThirtythreeState> emit, ) async  { Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.iphone11ProMaxTwentyfourScreen, );}); } 
 }
