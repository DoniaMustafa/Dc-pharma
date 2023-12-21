import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_one_screen/models/brand_infotwo_one_model.dart';part 'brand_infotwo_one_event.dart';part 'brand_infotwo_one_state.dart';/// A bloc that manages the state of a BrandInfotwoOne according to the event that is dispatched to it.
class BrandInfotwoOneBloc extends Bloc<BrandInfotwoOneEvent, BrandInfotwoOneState> {BrandInfotwoOneBloc(BrandInfotwoOneState initialState) : super(initialState) { on<BrandInfotwoOneInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoOneInitialEvent event, Emitter<BrandInfotwoOneState> emit, ) async  {  } 
 }
