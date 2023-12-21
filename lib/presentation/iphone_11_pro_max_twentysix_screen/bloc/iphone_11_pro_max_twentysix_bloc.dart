import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentysix_screen/models/iphone_11_pro_max_twentysix_model.dart';
part 'iphone_11_pro_max_twentysix_event.dart';
part 'iphone_11_pro_max_twentysix_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentysix according to the event that is dispatched to it.
class Iphone11ProMaxTwentysixBloc
    extends Bloc<Iphone11ProMaxTwentysixEvent, Iphone11ProMaxTwentysixState> {
  Iphone11ProMaxTwentysixBloc(Iphone11ProMaxTwentysixState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentysixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwentysixInitialEvent event,
    Emitter<Iphone11ProMaxTwentysixState> emit,
  ) async {}
}
