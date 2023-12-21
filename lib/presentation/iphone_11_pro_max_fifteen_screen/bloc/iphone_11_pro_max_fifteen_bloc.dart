import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile3_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_fifteen_screen/models/iphone_11_pro_max_fifteen_model.dart';
part 'iphone_11_pro_max_fifteen_event.dart';
part 'iphone_11_pro_max_fifteen_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxFifteen according to the event that is dispatched to it.
class Iphone11ProMaxFifteenBloc
    extends Bloc<Iphone11ProMaxFifteenEvent, Iphone11ProMaxFifteenState> {
  Iphone11ProMaxFifteenBloc(Iphone11ProMaxFifteenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxFifteenInitialEvent>(_onInitialize);
  }

  List<Userprofile3ItemModel> fillUserprofile3ItemList() {
    return List.generate(1, (index) => Userprofile3ItemModel());
  }

  _onInitialize(
    Iphone11ProMaxFifteenInitialEvent event,
    Emitter<Iphone11ProMaxFifteenState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxFifteenModelObj:
            state.iphone11ProMaxFifteenModelObj?.copyWith(
      userprofile3ItemList: fillUserprofile3ItemList(),
    )));
  }
}
