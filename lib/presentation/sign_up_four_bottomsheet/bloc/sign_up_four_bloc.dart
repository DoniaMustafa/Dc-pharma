import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/sign_up_four_bottomsheet/models/sign_up_four_model.dart';
part 'sign_up_four_event.dart';
part 'sign_up_four_state.dart';

/// A bloc that manages the state of a SignUpFour according to the event that is dispatched to it.
class SignUpFourBloc extends Bloc<SignUpFourEvent, SignUpFourState> {
  SignUpFourBloc(SignUpFourState initialState) : super(initialState) {
    on<SignUpFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpFourInitialEvent event,
    Emitter<SignUpFourState> emit,
  ) async {}
}
