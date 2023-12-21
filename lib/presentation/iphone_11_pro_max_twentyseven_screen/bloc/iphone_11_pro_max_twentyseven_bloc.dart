import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/slidertitle_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentyseven_screen/models/iphone_11_pro_max_twentyseven_model.dart';
part 'iphone_11_pro_max_twentyseven_event.dart';
part 'iphone_11_pro_max_twentyseven_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentyseven according to the event that is dispatched to it.
class Iphone11ProMaxTwentysevenBloc extends Bloc<Iphone11ProMaxTwentysevenEvent,
    Iphone11ProMaxTwentysevenState> {
  Iphone11ProMaxTwentysevenBloc(Iphone11ProMaxTwentysevenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentysevenInitialEvent>(_onInitialize);
  }

  List<SlidertitleItemModel> fillSlidertitleItemList() {
    return List.generate(1, (index) => SlidertitleItemModel());
  }

  _onInitialize(
    Iphone11ProMaxTwentysevenInitialEvent event,
    Emitter<Iphone11ProMaxTwentysevenState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxTwentysevenModelObj:
            state.iphone11ProMaxTwentysevenModelObj?.copyWith(
      slidertitleItemList: fillSlidertitleItemList(),
    )));
  }
}
