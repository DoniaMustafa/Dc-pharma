import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_sixtythree_screen/models/iphone_11_pro_max_sixtythree_model.dart';
part 'iphone_11_pro_max_sixtythree_event.dart';
part 'iphone_11_pro_max_sixtythree_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxSixtythree according to the event that is dispatched to it.
class Iphone11ProMaxSixtythreeBloc
    extends Bloc<Iphone11ProMaxSixtythreeEvent, Iphone11ProMaxSixtythreeState> {
  Iphone11ProMaxSixtythreeBloc(Iphone11ProMaxSixtythreeState initialState)
      : super(initialState) {
    on<Iphone11ProMaxSixtythreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxSixtythreeInitialEvent event,
    Emitter<Iphone11ProMaxSixtythreeState> emit,
  ) async {}
}
