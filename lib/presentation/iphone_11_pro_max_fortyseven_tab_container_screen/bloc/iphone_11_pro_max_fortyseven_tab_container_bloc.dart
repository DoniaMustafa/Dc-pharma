import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/gradient_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_fortyseven_tab_container_screen/models/iphone_11_pro_max_fortyseven_tab_container_model.dart';
part 'iphone_11_pro_max_fortyseven_tab_container_event.dart';
part 'iphone_11_pro_max_fortyseven_tab_container_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxFortysevenTabContainer according to the event that is dispatched to it.
class Iphone11ProMaxFortysevenTabContainerBloc extends Bloc<
    Iphone11ProMaxFortysevenTabContainerEvent,
    Iphone11ProMaxFortysevenTabContainerState> {
  Iphone11ProMaxFortysevenTabContainerBloc(
      Iphone11ProMaxFortysevenTabContainerState initialState)
      : super(initialState) {
    on<Iphone11ProMaxFortysevenTabContainerInitialEvent>(_onInitialize);
  }

  List<GradientItemModel> fillGradientItemList() {
    return [GradientItemModel(gradient: ImageConstant.imgGradient200x338)];
  }

  _onInitialize(
    Iphone11ProMaxFortysevenTabContainerInitialEvent event,
    Emitter<Iphone11ProMaxFortysevenTabContainerState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxFortysevenTabContainerModelObj:
            state.iphone11ProMaxFortysevenTabContainerModelObj?.copyWith(
      gradientItemList: fillGradientItemList(),
    )));
  }
}
