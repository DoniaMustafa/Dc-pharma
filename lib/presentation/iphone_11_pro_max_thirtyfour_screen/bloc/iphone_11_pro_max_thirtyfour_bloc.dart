import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_thirtyfour_screen/models/iphone_11_pro_max_thirtyfour_model.dart';
part 'iphone_11_pro_max_thirtyfour_event.dart';
part 'iphone_11_pro_max_thirtyfour_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThirtyfour according to the event that is dispatched to it.
class Iphone11ProMaxThirtyfourBloc
    extends Bloc<Iphone11ProMaxThirtyfourEvent, Iphone11ProMaxThirtyfourState> {
  Iphone11ProMaxThirtyfourBloc(Iphone11ProMaxThirtyfourState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThirtyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxThirtyfourInitialEvent event,
    Emitter<Iphone11ProMaxThirtyfourState> emit,
  ) async {}
}
