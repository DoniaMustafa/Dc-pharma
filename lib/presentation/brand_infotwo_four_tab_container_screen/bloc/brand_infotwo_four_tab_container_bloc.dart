import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_four_tab_container_screen/models/brand_infotwo_four_tab_container_model.dart';part 'brand_infotwo_four_tab_container_event.dart';part 'brand_infotwo_four_tab_container_state.dart';/// A bloc that manages the state of a BrandInfotwoFourTabContainer according to the event that is dispatched to it.
class BrandInfotwoFourTabContainerBloc extends Bloc<BrandInfotwoFourTabContainerEvent, BrandInfotwoFourTabContainerState> {BrandInfotwoFourTabContainerBloc(BrandInfotwoFourTabContainerState initialState) : super(initialState) { on<BrandInfotwoFourTabContainerInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoFourTabContainerInitialEvent event, Emitter<BrandInfotwoFourTabContainerState> emit, ) async  {  } 
 }
