import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_ten_screen/models/brand_infotwo_ten_model.dart';part 'brand_infotwo_ten_event.dart';part 'brand_infotwo_ten_state.dart';/// A bloc that manages the state of a BrandInfotwoTen according to the event that is dispatched to it.
class BrandInfotwoTenBloc extends Bloc<BrandInfotwoTenEvent, BrandInfotwoTenState> {BrandInfotwoTenBloc(BrandInfotwoTenState initialState) : super(initialState) { on<BrandInfotwoTenInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoTenInitialEvent event, Emitter<BrandInfotwoTenState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController())); } 
 }
