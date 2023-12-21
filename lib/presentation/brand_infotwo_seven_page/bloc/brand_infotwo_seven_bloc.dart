import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:drfarama/presentation/brand_infotwo_seven_page/models/brand_infotwo_seven_model.dart';
part 'brand_infotwo_seven_event.dart';
part 'brand_infotwo_seven_state.dart';

/// A bloc that manages the state of a BrandInfotwoSeven according to the event that is dispatched to it.
class BrandInfotwoSevenBloc
    extends Bloc<BrandInfotwoSevenEvent, BrandInfotwoSevenState> {
  BrandInfotwoSevenBloc(BrandInfotwoSevenState initialState)
      : super(initialState) {
    on<BrandInfotwoSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BrandInfotwoSevenInitialEvent event,
    Emitter<BrandInfotwoSevenState> emit,
  ) async {}
}
