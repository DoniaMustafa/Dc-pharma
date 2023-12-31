import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/profile_one_bottomsheet/models/profile_one_model.dart';
part 'profile_one_event.dart';
part 'profile_one_state.dart';

/// A bloc that manages the state of a ProfileOne according to the event that is dispatched to it.
class ProfileOneBloc extends Bloc<ProfileOneEvent, ProfileOneState> {
  ProfileOneBloc(ProfileOneState initialState) : super(initialState) {
    on<ProfileOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileOneInitialEvent event,
    Emitter<ProfileOneState> emit,
  ) async {
    emit(state.copyWith(
      languageController: TextEditingController(),
      languageController1: TextEditingController(),
    ));
  }
}
