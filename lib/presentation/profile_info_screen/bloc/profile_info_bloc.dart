import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/profile_info_screen/models/profile_info_model.dart';
part 'profile_info_event.dart';
part 'profile_info_state.dart';

/// A bloc that manages the state of a ProfileInfo according to the event that is dispatched to it.
class ProfileInfoBloc extends Bloc<ProfileInfoEvent, ProfileInfoState> {
  ProfileInfoBloc(ProfileInfoState initialState) : super(initialState) {
    on<ProfileInfoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileInfoInitialEvent event,
    Emitter<ProfileInfoState> emit,
  ) async {
    emit(state.copyWith(
      pharmacyNameController: TextEditingController(),
    ));
  }
}
