import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_info_tab_container_screen/models/brand_info_tab_container_model.dart';part 'brand_info_tab_container_event.dart';part 'brand_info_tab_container_state.dart';/// A bloc that manages the state of a BrandInfoTabContainer according to the event that is dispatched to it.
class BrandInfoTabContainerBloc extends Bloc<BrandInfoTabContainerEvent, BrandInfoTabContainerState> {BrandInfoTabContainerBloc(BrandInfoTabContainerState initialState) : super(initialState) { on<BrandInfoTabContainerInitialEvent>(_onInitialize); }

_onInitialize(BrandInfoTabContainerInitialEvent event, Emitter<BrandInfoTabContainerState> emit, ) async  {  } 
 }
