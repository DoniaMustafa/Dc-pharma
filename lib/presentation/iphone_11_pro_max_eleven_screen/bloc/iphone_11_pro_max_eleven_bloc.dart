import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_eleven_screen/models/iphone_11_pro_max_eleven_model.dart';
part 'iphone_11_pro_max_eleven_event.dart';
part 'iphone_11_pro_max_eleven_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxEleven according to the event that is dispatched to it.
class Iphone11ProMaxElevenBloc
    extends Bloc<Iphone11ProMaxElevenEvent, Iphone11ProMaxElevenState> {
  Iphone11ProMaxElevenBloc(Iphone11ProMaxElevenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxElevenInitialEvent event,
    Emitter<Iphone11ProMaxElevenState> emit,
  ) async {}
}
