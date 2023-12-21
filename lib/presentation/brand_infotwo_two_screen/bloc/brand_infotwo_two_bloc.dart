import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_two_screen/models/brand_infotwo_two_model.dart';part 'brand_infotwo_two_event.dart';part 'brand_infotwo_two_state.dart';/// A bloc that manages the state of a BrandInfotwoTwo according to the event that is dispatched to it.
class BrandInfotwoTwoBloc extends Bloc<BrandInfotwoTwoEvent, BrandInfotwoTwoState> {BrandInfotwoTwoBloc(BrandInfotwoTwoState initialState) : super(initialState) { on<BrandInfotwoTwoInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoTwoInitialEvent event, Emitter<BrandInfotwoTwoState> emit, ) async  {  } 
 }
