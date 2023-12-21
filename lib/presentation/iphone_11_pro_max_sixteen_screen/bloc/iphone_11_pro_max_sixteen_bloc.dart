import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slidercomponent_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_sixteen_screen/models/iphone_11_pro_max_sixteen_model.dart';
part 'iphone_11_pro_max_sixteen_event.dart';
part 'iphone_11_pro_max_sixteen_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSixteen according to the event that is dispatched to it.
class Iphone11ProMaxSixteenBloc
    extends Bloc<Iphone11ProMaxSixteenEvent, Iphone11ProMaxSixteenState> {
  Iphone11ProMaxSixteenBloc(Iphone11ProMaxSixteenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixteenInitialEvent>(_onInitialize);
  }

  List<SlidercomponentItemModel> fillSlidercomponentItemList() {
    return List.generate(1, (index) => SlidercomponentItemModel());
  }

  _onInitialize(
    Iphone11ProMaxSixteenInitialEvent event,
    Emitter<Iphone11ProMaxSixteenState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxSixteenModelObj:
            state.iphone11ProMaxSixteenModelObj?.copyWith(
      slidercomponentItemList: fillSlidercomponentItemList(),
    )));
  }
}
