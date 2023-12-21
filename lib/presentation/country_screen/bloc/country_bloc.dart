import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/country_screen/models/country_model.dart';
part 'country_event.dart';
part 'country_state.dart';

/// A bloc that manages the state of a Country according to the event that is dispatched to it.
class CountryBloc extends Bloc<CountryEvent, CountryState> {
  CountryBloc(CountryState initialState) : super(initialState) {
    on<CountryInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<CountryState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword: event.value,
    ));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<CountryState> emit,
  ) {
    emit(state.copyWith(
      isShowPassword1: event.value,
    ));
  }

  _onInitialize(
    CountryInitialEvent event,
    Emitter<CountryState> emit,
  ) async {
    emit(state.copyWith(
      phoneEditTextController: TextEditingController(),
      emailEditTextController: TextEditingController(),
      passwordEditTextController: TextEditingController(),
      confirmpasswordEditTextController: TextEditingController(),
      isShowPassword: true,
      isShowPassword1: true,
    ));
  }
}
