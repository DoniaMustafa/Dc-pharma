import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_fifteen_screen/models/brand_infotwo_fifteen_model.dart';part 'brand_infotwo_fifteen_event.dart';part 'brand_infotwo_fifteen_state.dart';/// A bloc that manages the state of a BrandInfotwoFifteen according to the event that is dispatched to it.
class BrandInfotwoFifteenBloc extends Bloc<BrandInfotwoFifteenEvent, BrandInfotwoFifteenState> {BrandInfotwoFifteenBloc(BrandInfotwoFifteenState initialState) : super(initialState) { on<BrandInfotwoFifteenInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoFifteenInitialEvent event, Emitter<BrandInfotwoFifteenState> emit, ) async  { emit(state.copyWith(messageEditTextController: TextEditingController())); } 
 }
