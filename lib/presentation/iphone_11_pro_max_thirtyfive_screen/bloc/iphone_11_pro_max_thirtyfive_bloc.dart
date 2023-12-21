import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_thirtyfive_screen/models/iphone_11_pro_max_thirtyfive_model.dart';
part 'iphone_11_pro_max_thirtyfive_event.dart';
part 'iphone_11_pro_max_thirtyfive_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThirtyfive according to the event that is dispatched to it.
class Iphone11ProMaxThirtyfiveBloc
    extends Bloc<Iphone11ProMaxThirtyfiveEvent, Iphone11ProMaxThirtyfiveState> {
  Iphone11ProMaxThirtyfiveBloc(Iphone11ProMaxThirtyfiveState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThirtyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxThirtyfiveInitialEvent event,
    Emitter<Iphone11ProMaxThirtyfiveState> emit,
  ) async {}
}
