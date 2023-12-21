import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_sixtytwo_screen/models/iphone_11_pro_max_sixtytwo_model.dart';
part 'iphone_11_pro_max_sixtytwo_event.dart';
part 'iphone_11_pro_max_sixtytwo_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSixtytwo according to the event that is dispatched to it.
class Iphone11ProMaxSixtytwoBloc
    extends Bloc<Iphone11ProMaxSixtytwoEvent, Iphone11ProMaxSixtytwoState> {
  Iphone11ProMaxSixtytwoBloc(Iphone11ProMaxSixtytwoState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixtytwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxSixtytwoInitialEvent event,
    Emitter<Iphone11ProMaxSixtytwoState> emit,
  ) async {}
}
