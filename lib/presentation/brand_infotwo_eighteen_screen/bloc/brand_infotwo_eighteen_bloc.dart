import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_eighteen_screen/models/brand_infotwo_eighteen_model.dart';part 'brand_infotwo_eighteen_event.dart';part 'brand_infotwo_eighteen_state.dart';/// A bloc that manages the state of a BrandInfotwoEighteen according to the event that is dispatched to it.
class BrandInfotwoEighteenBloc extends Bloc<BrandInfotwoEighteenEvent, BrandInfotwoEighteenState> {BrandInfotwoEighteenBloc(BrandInfotwoEighteenState initialState) : super(initialState) { on<BrandInfotwoEighteenInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoEighteenInitialEvent event, Emitter<BrandInfotwoEighteenState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), serviceDescriptionController: TextEditingController())); } 
 }
