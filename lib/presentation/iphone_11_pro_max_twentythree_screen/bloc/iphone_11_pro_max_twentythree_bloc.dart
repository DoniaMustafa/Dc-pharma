import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentythree_screen/models/iphone_11_pro_max_twentythree_model.dart';
part 'iphone_11_pro_max_twentythree_event.dart';
part 'iphone_11_pro_max_twentythree_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentythree according to the event that is dispatched to it.
class Iphone11ProMaxTwentythreeBloc extends Bloc<Iphone11ProMaxTwentythreeEvent,
    Iphone11ProMaxTwentythreeState> {
  Iphone11ProMaxTwentythreeBloc(Iphone11ProMaxTwentythreeState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwentythreeInitialEvent event,
    Emitter<Iphone11ProMaxTwentythreeState> emit,
  ) async {}
}
