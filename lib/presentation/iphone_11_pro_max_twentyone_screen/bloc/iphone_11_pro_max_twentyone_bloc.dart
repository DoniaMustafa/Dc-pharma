import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentyone_screen/models/iphone_11_pro_max_twentyone_model.dart';
part 'iphone_11_pro_max_twentyone_event.dart';
part 'iphone_11_pro_max_twentyone_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentyone according to the event that is dispatched to it.
class Iphone11ProMaxTwentyoneBloc
    extends Bloc<Iphone11ProMaxTwentyoneEvent, Iphone11ProMaxTwentyoneState> {
  Iphone11ProMaxTwentyoneBloc(Iphone11ProMaxTwentyoneState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwentyoneInitialEvent event,
    Emitter<Iphone11ProMaxTwentyoneState> emit,
  ) async {}
}
