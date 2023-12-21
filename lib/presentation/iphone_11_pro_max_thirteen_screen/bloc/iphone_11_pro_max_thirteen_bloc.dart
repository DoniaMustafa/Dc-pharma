import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_thirteen_screen/models/iphone_11_pro_max_thirteen_model.dart';
part 'iphone_11_pro_max_thirteen_event.dart';
part 'iphone_11_pro_max_thirteen_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThirteen according to the event that is dispatched to it.
class Iphone11ProMaxThirteenBloc
    extends Bloc<Iphone11ProMaxThirteenEvent, Iphone11ProMaxThirteenState> {
  Iphone11ProMaxThirteenBloc(Iphone11ProMaxThirteenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThirteenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxThirteenInitialEvent event,
    Emitter<Iphone11ProMaxThirteenState> emit,
  ) async {}
}
