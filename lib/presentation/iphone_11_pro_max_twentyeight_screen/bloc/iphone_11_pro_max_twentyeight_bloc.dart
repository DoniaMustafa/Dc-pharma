import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sliderwidget1_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentyeight_screen/models/iphone_11_pro_max_twentyeight_model.dart';
part 'iphone_11_pro_max_twentyeight_event.dart';
part 'iphone_11_pro_max_twentyeight_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentyeight according to the event that is dispatched to it.
class Iphone11ProMaxTwentyeightBloc extends Bloc<Iphone11ProMaxTwentyeightEvent,
    Iphone11ProMaxTwentyeightState> {
  Iphone11ProMaxTwentyeightBloc(Iphone11ProMaxTwentyeightState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentyeightInitialEvent>(_onInitialize);
  }

  List<Sliderwidget1ItemModel> fillSliderwidget1ItemList() {
    return List.generate(1, (index) => Sliderwidget1ItemModel());
  }

  _onInitialize(
    Iphone11ProMaxTwentyeightInitialEvent event,
    Emitter<Iphone11ProMaxTwentyeightState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxTwentyeightModelObj:
            state.iphone11ProMaxTwentyeightModelObj?.copyWith(
      sliderwidget1ItemList: fillSliderwidget1ItemList(),
    )));
  }
}
