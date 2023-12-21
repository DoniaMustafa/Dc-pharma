import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderwidget_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_seventeen_screen/models/iphone_11_pro_max_seventeen_model.dart';
part 'iphone_11_pro_max_seventeen_event.dart';
part 'iphone_11_pro_max_seventeen_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSeventeen according to the event that is dispatched to it.
class Iphone11ProMaxSeventeenBloc
    extends Bloc<Iphone11ProMaxSeventeenEvent, Iphone11ProMaxSeventeenState> {
  Iphone11ProMaxSeventeenBloc(Iphone11ProMaxSeventeenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSeventeenInitialEvent>(_onInitialize);
  }

  List<SliderwidgetItemModel> fillSliderwidgetItemList() {
    return List.generate(1, (index) => SliderwidgetItemModel());
  }

  _onInitialize(
    Iphone11ProMaxSeventeenInitialEvent event,
    Emitter<Iphone11ProMaxSeventeenState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxSeventeenModelObj:
            state.iphone11ProMaxSeventeenModelObj?.copyWith(
      sliderwidgetItemList: fillSliderwidgetItemList(),
    )));
  }
}
