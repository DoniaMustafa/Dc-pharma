import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_five_screen/models/brand_infotwo_five_model.dart';part 'brand_infotwo_five_event.dart';part 'brand_infotwo_five_state.dart';/// A bloc that manages the state of a BrandInfotwoFive according to the event that is dispatched to it.
class BrandInfotwoFiveBloc extends Bloc<BrandInfotwoFiveEvent, BrandInfotwoFiveState> {BrandInfotwoFiveBloc(BrandInfotwoFiveState initialState) : super(initialState) { on<BrandInfotwoFiveInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoFiveInitialEvent event, Emitter<BrandInfotwoFiveState> emit, ) async  {  } 
 }
