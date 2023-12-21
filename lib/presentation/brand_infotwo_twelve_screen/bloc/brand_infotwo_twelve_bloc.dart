import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_twelve_screen/models/brand_infotwo_twelve_model.dart';part 'brand_infotwo_twelve_event.dart';part 'brand_infotwo_twelve_state.dart';/// A bloc that manages the state of a BrandInfotwoTwelve according to the event that is dispatched to it.
class BrandInfotwoTwelveBloc extends Bloc<BrandInfotwoTwelveEvent, BrandInfotwoTwelveState> {BrandInfotwoTwelveBloc(BrandInfotwoTwelveState initialState) : super(initialState) { on<BrandInfotwoTwelveInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoTwelveInitialEvent event, Emitter<BrandInfotwoTwelveState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), addAnotherOneController: TextEditingController())); } 
 }
