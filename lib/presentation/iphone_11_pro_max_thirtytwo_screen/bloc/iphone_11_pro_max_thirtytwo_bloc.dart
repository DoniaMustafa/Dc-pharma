import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderwidget3_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_thirtytwo_screen/models/iphone_11_pro_max_thirtytwo_model.dart';
part 'iphone_11_pro_max_thirtytwo_event.dart';
part 'iphone_11_pro_max_thirtytwo_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThirtytwo according to the event that is dispatched to it.
class Iphone11ProMaxThirtytwoBloc
    extends Bloc<Iphone11ProMaxThirtytwoEvent, Iphone11ProMaxThirtytwoState> {
  Iphone11ProMaxThirtytwoBloc(Iphone11ProMaxThirtytwoState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThirtytwoInitialEvent>(_onInitialize);
  }

  List<Sliderwidget3ItemModel> fillSliderwidget3ItemList() {
    return List.generate(1, (index) => Sliderwidget3ItemModel());
  }

  _onInitialize(
    Iphone11ProMaxThirtytwoInitialEvent event,
    Emitter<Iphone11ProMaxThirtytwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxThirtytwoModelObj:
            state.iphone11ProMaxThirtytwoModelObj?.copyWith(
      sliderwidget3ItemList: fillSliderwidget3ItemList(),
    )));
  }
}
