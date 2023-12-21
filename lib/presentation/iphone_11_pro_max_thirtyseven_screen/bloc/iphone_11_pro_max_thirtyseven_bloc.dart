import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_thirtyseven_screen/models/iphone_11_pro_max_thirtyseven_model.dart';
part 'iphone_11_pro_max_thirtyseven_event.dart';
part 'iphone_11_pro_max_thirtyseven_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThirtyseven according to the event that is dispatched to it.
class Iphone11ProMaxThirtysevenBloc extends Bloc<Iphone11ProMaxThirtysevenEvent,
    Iphone11ProMaxThirtysevenState> {
  Iphone11ProMaxThirtysevenBloc(Iphone11ProMaxThirtysevenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThirtysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxThirtysevenInitialEvent event,
    Emitter<Iphone11ProMaxThirtysevenState> emit,
  ) async {}
}
