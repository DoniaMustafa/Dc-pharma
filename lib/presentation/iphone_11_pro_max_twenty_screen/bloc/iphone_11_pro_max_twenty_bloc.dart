import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twenty_screen/models/iphone_11_pro_max_twenty_model.dart';
part 'iphone_11_pro_max_twenty_event.dart';
part 'iphone_11_pro_max_twenty_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwenty according to the event that is dispatched to it.
class Iphone11ProMaxTwentyBloc
    extends Bloc<Iphone11ProMaxTwentyEvent, Iphone11ProMaxTwentyState> {
  Iphone11ProMaxTwentyBloc(Iphone11ProMaxTwentyState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwentyInitialEvent event,
    Emitter<Iphone11ProMaxTwentyState> emit,
  ) async {}
}
