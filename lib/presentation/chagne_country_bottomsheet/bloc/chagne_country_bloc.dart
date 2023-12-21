import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/countryselectionlist_item_model.dart';
import 'package:drfarama/presentation/chagne_country_bottomsheet/models/chagne_country_model.dart';
part 'chagne_country_event.dart';
part 'chagne_country_state.dart';

/// A bloc that manages the state of a ChagneCountry according to the event that is dispatched to it.
class ChagneCountryBloc extends Bloc<ChagneCountryEvent, ChagneCountryState> {
  ChagneCountryBloc(ChagneCountryState initialState) : super(initialState) {
    on<ChagneCountryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChagneCountryInitialEvent event,
    Emitter<ChagneCountryState> emit,
  ) async {
    emit(state.copyWith(
        chagneCountryModelObj: state.chagneCountryModelObj?.copyWith(
      countryselectionlistItemList: fillCountryselectionlistItemList(),
    )));
  }

  List<CountryselectionlistItemModel> fillCountryselectionlistItemList() {
    return [
      CountryselectionlistItemModel(
          userImage: ImageConstant.imgSaudiArabia1,
          text: "Saudi Arabia",
          checkmarkImage: ImageConstant.imgCheckmarkRed700)
    ];
  }
}
