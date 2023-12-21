import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile4_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_thirty_screen/models/iphone_11_pro_max_thirty_model.dart';
part 'iphone_11_pro_max_thirty_event.dart';
part 'iphone_11_pro_max_thirty_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxThirty according to the event that is dispatched to it.
class Iphone11ProMaxThirtyBloc
    extends Bloc<Iphone11ProMaxThirtyEvent, Iphone11ProMaxThirtyState> {
  Iphone11ProMaxThirtyBloc(Iphone11ProMaxThirtyState initialState)
      : super(initialState) {
    on<Iphone11ProMaxThirtyInitialEvent>(_onInitialize);
  }

  List<Userprofile4ItemModel> fillUserprofile4ItemList() {
    return List.generate(1, (index) => Userprofile4ItemModel());
  }

  _onInitialize(
    Iphone11ProMaxThirtyInitialEvent event,
    Emitter<Iphone11ProMaxThirtyState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxThirtyModelObj:
            state.iphone11ProMaxThirtyModelObj?.copyWith(
      userprofile4ItemList: fillUserprofile4ItemList(),
    )));
  }
}
