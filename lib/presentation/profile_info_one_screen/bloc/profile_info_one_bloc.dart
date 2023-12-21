import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:drfarama/presentation/profile_info_one_screen/models/profile_info_one_model.dart';part 'profile_info_one_event.dart';part 'profile_info_one_state.dart';/// A bloc that manages the state of a ProfileInfoOne according to the event that is dispatched to it.
class ProfileInfoOneBloc extends Bloc<ProfileInfoOneEvent, ProfileInfoOneState> {ProfileInfoOneBloc(ProfileInfoOneState initialState) : super(initialState) { on<ProfileInfoOneInitialEvent>(_onInitialize); on<ChangeCountryEvent>(_changeCountry); }

_changeCountry(ChangeCountryEvent event, Emitter<ProfileInfoOneState> emit, ) { emit(state.copyWith(selectedCountry: event.value)); } 
_onInitialize(ProfileInfoOneInitialEvent event, Emitter<ProfileInfoOneState> emit, ) async  { emit(state.copyWith(hassnaaAdelController: TextEditingController(), emailController: TextEditingController(), phoneNumberController: TextEditingController())); } 
 }
