import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/category_tab_container_screen/models/category_tab_container_model.dart';
part 'category_tab_container_event.dart';
part 'category_tab_container_state.dart';

/// A bloc that manages the state of a CategoryTabContainer according to the event that is dispatched to it.
class CategoryTabContainerBloc
    extends Bloc<CategoryTabContainerEvent, CategoryTabContainerState> {
  CategoryTabContainerBloc(CategoryTabContainerState initialState)
      : super(initialState) {
    on<CategoryTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoryTabContainerInitialEvent event,
    Emitter<CategoryTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
