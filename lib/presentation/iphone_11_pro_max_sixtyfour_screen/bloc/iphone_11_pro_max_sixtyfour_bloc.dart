import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_sixtyfour_screen/models/iphone_11_pro_max_sixtyfour_model.dart';
part 'iphone_11_pro_max_sixtyfour_event.dart';
part 'iphone_11_pro_max_sixtyfour_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSixtyfour according to the event that is dispatched to it.
class Iphone11ProMaxSixtyfourBloc
    extends Bloc<Iphone11ProMaxSixtyfourEvent, Iphone11ProMaxSixtyfourState> {
  Iphone11ProMaxSixtyfourBloc(Iphone11ProMaxSixtyfourState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixtyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxSixtyfourInitialEvent event,
    Emitter<Iphone11ProMaxSixtyfourState> emit,
  ) async {}
}
