import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_sixtyfive_one_screen/models/iphone_11_pro_max_sixtyfive_one_model.dart';
part 'iphone_11_pro_max_sixtyfive_one_event.dart';
part 'iphone_11_pro_max_sixtyfive_one_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSixtyfiveOne according to the event that is dispatched to it.
class Iphone11ProMaxSixtyfiveOneBloc extends Bloc<
    Iphone11ProMaxSixtyfiveOneEvent, Iphone11ProMaxSixtyfiveOneState> {
  Iphone11ProMaxSixtyfiveOneBloc(Iphone11ProMaxSixtyfiveOneState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixtyfiveOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxSixtyfiveOneInitialEvent event,
    Emitter<Iphone11ProMaxSixtyfiveOneState> emit,
  ) async {}
}
