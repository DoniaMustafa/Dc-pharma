import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_fiftynine_screen/models/iphone_11_pro_max_fiftynine_model.dart';
part 'iphone_11_pro_max_fiftynine_event.dart';
part 'iphone_11_pro_max_fiftynine_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxFiftynine according to the event that is dispatched to it.
class Iphone11ProMaxFiftynineBloc
    extends Bloc<Iphone11ProMaxFiftynineEvent, Iphone11ProMaxFiftynineState> {
  Iphone11ProMaxFiftynineBloc(Iphone11ProMaxFiftynineState initialState)
      : super(initialState) {
    on<Iphone11ProMaxFiftynineInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxFiftynineInitialEvent event,
    Emitter<Iphone11ProMaxFiftynineState> emit,
  ) async {}
}
