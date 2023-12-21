import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderwidget2_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_thirtyone_screen/models/iphone_11_pro_max_thirtyone_model.dart';
part 'iphone_11_pro_max_thirtyone_event.dart';
part 'iphone_11_pro_max_thirtyone_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThirtyone according to the event that is dispatched to it.
class Iphone11ProMaxThirtyoneBloc
    extends Bloc<Iphone11ProMaxThirtyoneEvent, Iphone11ProMaxThirtyoneState> {
  Iphone11ProMaxThirtyoneBloc(Iphone11ProMaxThirtyoneState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThirtyoneInitialEvent>(_onInitialize);
  }

  List<Sliderwidget2ItemModel> fillSliderwidget2ItemList() {
    return List.generate(1, (index) => Sliderwidget2ItemModel());
  }

  _onInitialize(
    Iphone11ProMaxThirtyoneInitialEvent event,
    Emitter<Iphone11ProMaxThirtyoneState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxThirtyoneModelObj:
            state.iphone11ProMaxThirtyoneModelObj?.copyWith(
      sliderwidget2ItemList: fillSliderwidget2ItemList(),
    )));
  }
}
