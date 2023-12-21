import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentyfour_screen/models/iphone_11_pro_max_twentyfour_model.dart';
part 'iphone_11_pro_max_twentyfour_event.dart';
part 'iphone_11_pro_max_twentyfour_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentyfour according to the event that is dispatched to it.
class Iphone11ProMaxTwentyfourBloc
    extends Bloc<Iphone11ProMaxTwentyfourEvent, Iphone11ProMaxTwentyfourState> {
  Iphone11ProMaxTwentyfourBloc(Iphone11ProMaxTwentyfourState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxTwentyfourInitialEvent event,
    Emitter<Iphone11ProMaxTwentyfourState> emit,
  ) async {}
}
