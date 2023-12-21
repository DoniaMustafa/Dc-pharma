import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/category_info_three_screen/models/category_info_three_model.dart';part 'category_info_three_event.dart';part 'category_info_three_state.dart';/// A bloc that manages the state of a CategoryInfoThree according to the event that is dispatched to it.
class CategoryInfoThreeBloc extends Bloc<CategoryInfoThreeEvent, CategoryInfoThreeState> {CategoryInfoThreeBloc(CategoryInfoThreeState initialState) : super(initialState) { on<CategoryInfoThreeInitialEvent>(_onInitialize); }

_onInitialize(CategoryInfoThreeInitialEvent event, Emitter<CategoryInfoThreeState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
