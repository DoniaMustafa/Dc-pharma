import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_eleven_screen/models/brand_infotwo_eleven_model.dart';part 'brand_infotwo_eleven_event.dart';part 'brand_infotwo_eleven_state.dart';/// A bloc that manages the state of a BrandInfotwoEleven according to the event that is dispatched to it.
class BrandInfotwoElevenBloc extends Bloc<BrandInfotwoElevenEvent, BrandInfotwoElevenState> {BrandInfotwoElevenBloc(BrandInfotwoElevenState initialState) : super(initialState) { on<BrandInfotwoElevenInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoElevenInitialEvent event, Emitter<BrandInfotwoElevenState> emit, ) async  {  } 
 }
