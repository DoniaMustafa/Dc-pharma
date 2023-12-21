import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_nineteen_screen/models/iphone_11_pro_max_nineteen_model.dart';
part 'iphone_11_pro_max_nineteen_event.dart';
part 'iphone_11_pro_max_nineteen_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxNineteen according to the event that is dispatched to it.
class Iphone11ProMaxNineteenBloc
    extends Bloc<Iphone11ProMaxNineteenEvent, Iphone11ProMaxNineteenState> {
  Iphone11ProMaxNineteenBloc(Iphone11ProMaxNineteenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxNineteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxNineteenInitialEvent event,
    Emitter<Iphone11ProMaxNineteenState> emit,
  ) async {}
}
