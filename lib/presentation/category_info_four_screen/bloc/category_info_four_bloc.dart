import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/category_info_four_screen/models/category_info_four_model.dart';
part 'category_info_four_event.dart';
part 'category_info_four_state.dart';

/// A bloc that manages the state of a CategoryInfoFour according to the event that is dispatched to it.
class CategoryInfoFourBloc
    extends Bloc<CategoryInfoFourEvent, CategoryInfoFourState> {
  CategoryInfoFourBloc(CategoryInfoFourState initialState)
      : super(initialState) {
    on<CategoryInfoFourInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CategoryInfoFourState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _onInitialize(
    CategoryInfoFourInitialEvent event,
    Emitter<CategoryInfoFourState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
  }
}
