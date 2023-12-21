import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_eighteen_screen/models/iphone_11_pro_max_eighteen_model.dart';
part 'iphone_11_pro_max_eighteen_event.dart';
part 'iphone_11_pro_max_eighteen_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxEighteen according to the event that is dispatched to it.
class Iphone11ProMaxEighteenBloc
    extends Bloc<Iphone11ProMaxEighteenEvent, Iphone11ProMaxEighteenState> {
  Iphone11ProMaxEighteenBloc(Iphone11ProMaxEighteenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxEighteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxEighteenInitialEvent event,
    Emitter<Iphone11ProMaxEighteenState> emit,
  ) async {}
}
