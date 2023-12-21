import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twelve_screen/models/iphone_11_pro_max_twelve_model.dart';
part 'iphone_11_pro_max_twelve_event.dart';
part 'iphone_11_pro_max_twelve_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwelve according to the event that is dispatched to it.
class Iphone11ProMaxTwelveBloc
    extends Bloc<Iphone11ProMaxTwelveEvent, Iphone11ProMaxTwelveState> {
  Iphone11ProMaxTwelveBloc(Iphone11ProMaxTwelveState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwelveInitialEvent event,
    Emitter<Iphone11ProMaxTwelveState> emit,
  ) async {}
}
