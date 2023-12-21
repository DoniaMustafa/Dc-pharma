import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_sixtyone_screen/models/iphone_11_pro_max_sixtyone_model.dart';
part 'iphone_11_pro_max_sixtyone_event.dart';
part 'iphone_11_pro_max_sixtyone_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSixtyone according to the event that is dispatched to it.
class Iphone11ProMaxSixtyoneBloc
    extends Bloc<Iphone11ProMaxSixtyoneEvent, Iphone11ProMaxSixtyoneState> {
  Iphone11ProMaxSixtyoneBloc(Iphone11ProMaxSixtyoneState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixtyoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxSixtyoneInitialEvent event,
    Emitter<Iphone11ProMaxSixtyoneState> emit,
  ) async {}
}
