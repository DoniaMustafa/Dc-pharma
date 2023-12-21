import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentytwo_screen/models/iphone_11_pro_max_twentytwo_model.dart';
part 'iphone_11_pro_max_twentytwo_event.dart';
part 'iphone_11_pro_max_twentytwo_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentytwo according to the event that is dispatched to it.
class Iphone11ProMaxTwentytwoBloc
    extends Bloc<Iphone11ProMaxTwentytwoEvent, Iphone11ProMaxTwentytwoState> {
  Iphone11ProMaxTwentytwoBloc(Iphone11ProMaxTwentytwoState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwentytwoInitialEvent event,
    Emitter<Iphone11ProMaxTwentytwoState> emit,
  ) async {}
}
