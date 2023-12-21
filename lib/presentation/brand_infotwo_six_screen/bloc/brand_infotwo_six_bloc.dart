import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_six_screen/models/brand_infotwo_six_model.dart';part 'brand_infotwo_six_event.dart';part 'brand_infotwo_six_state.dart';/// A bloc that manages the state of a BrandInfotwoSix according to the event that is dispatched to it.
class BrandInfotwoSixBloc extends Bloc<BrandInfotwoSixEvent, BrandInfotwoSixState> {BrandInfotwoSixBloc(BrandInfotwoSixState initialState) : super(initialState) { on<BrandInfotwoSixInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoSixInitialEvent event, Emitter<BrandInfotwoSixState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), addAnotherOneController: TextEditingController())); } 
 }
