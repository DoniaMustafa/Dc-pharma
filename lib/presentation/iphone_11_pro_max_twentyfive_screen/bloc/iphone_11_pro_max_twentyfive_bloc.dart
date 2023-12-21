import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentyfive_screen/models/iphone_11_pro_max_twentyfive_model.dart';
part 'iphone_11_pro_max_twentyfive_event.dart';
part 'iphone_11_pro_max_twentyfive_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentyfive according to the event that is dispatched to it.
class Iphone11ProMaxTwentyfiveBloc
    extends Bloc<Iphone11ProMaxTwentyfiveEvent, Iphone11ProMaxTwentyfiveState> {
  Iphone11ProMaxTwentyfiveBloc(Iphone11ProMaxTwentyfiveState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentyfiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwentyfiveInitialEvent event,
    Emitter<Iphone11ProMaxTwentyfiveState> emit,
  ) async {}
}
