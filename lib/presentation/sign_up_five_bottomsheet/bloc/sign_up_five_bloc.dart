import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:drfarama/presentation/sign_up_five_bottomsheet/models/sign_up_five_model.dart';part 'sign_up_five_event.dart';part 'sign_up_five_state.dart';/// A bloc that manages the state of a SignUpFive according to the event that is dispatched to it.
class SignUpFiveBloc extends Bloc<SignUpFiveEvent, SignUpFiveState> {SignUpFiveBloc(SignUpFiveState initialState) : super(initialState) { on<SignUpFiveInitialEvent>(_onInitialize); }

_onInitialize(SignUpFiveInitialEvent event, Emitter<SignUpFiveState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
