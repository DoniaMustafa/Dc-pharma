import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_five_screen/models/iphone_11_pro_max_five_model.dart';
part 'iphone_11_pro_max_five_event.dart';
part 'iphone_11_pro_max_five_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxFive according to the event that is dispatched to it.
class Iphone11ProMaxFiveBloc
    extends Bloc<Iphone11ProMaxFiveEvent, Iphone11ProMaxFiveState> {
  Iphone11ProMaxFiveBloc(Iphone11ProMaxFiveState initialState)
      : super(initialState) {
    on<Iphone11ProMaxFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxFiveInitialEvent event,
    Emitter<Iphone11ProMaxFiveState> emit,
  ) async {}
}
