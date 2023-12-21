import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/seventyfive_item_model.dart';import 'package:drfarama/presentation/iphone_11_pro_max_sixtyfive_screen/models/iphone_11_pro_max_sixtyfive_model.dart';part 'iphone_11_pro_max_sixtyfive_event.dart';part 'iphone_11_pro_max_sixtyfive_state.dart';/// A bloc that manages the state of a Iphone11ProMaxSixtyfive according to the event that is dispatched to it.
class Iphone11ProMaxSixtyfiveBloc extends Bloc<Iphone11ProMaxSixtyfiveEvent, Iphone11ProMaxSixtyfiveState> {Iphone11ProMaxSixtyfiveBloc(Iphone11ProMaxSixtyfiveState initialState) : super(initialState) { on<Iphone11ProMaxSixtyfiveInitialEvent>(_onInitialize); }

List<SeventyfiveItemModel> fillSeventyfiveItemList() { return List.generate(1, (index) => SeventyfiveItemModel()); } 
_onInitialize(Iphone11ProMaxSixtyfiveInitialEvent event, Emitter<Iphone11ProMaxSixtyfiveState> emit, ) async  { emit(state.copyWith(sliderIndex: 0)); emit(state.copyWith(iphone11ProMaxSixtyfiveModelObj: state.iphone11ProMaxSixtyfiveModelObj?.copyWith(seventyfiveItemList: fillSeventyfiveItemList()))); } 
 }
