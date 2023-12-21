import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/waitingtextsection_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_twentynine_screen/models/iphone_11_pro_max_twentynine_model.dart';
part 'iphone_11_pro_max_twentynine_event.dart';
part 'iphone_11_pro_max_twentynine_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxTwentynine according to the event that is dispatched to it.
class Iphone11ProMaxTwentynineBloc
    extends Bloc<Iphone11ProMaxTwentynineEvent, Iphone11ProMaxTwentynineState> {
  Iphone11ProMaxTwentynineBloc(Iphone11ProMaxTwentynineState initialState)
      : super(initialState) {
    on<Iphone11ProMaxTwentynineInitialEvent>(_onInitialize);
  }

  List<WaitingtextsectionItemModel> fillWaitingtextsectionItemList() {
    return List.generate(1, (index) => WaitingtextsectionItemModel());
  }

  _onInitialize(
    Iphone11ProMaxTwentynineInitialEvent event,
    Emitter<Iphone11ProMaxTwentynineState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        iphone11ProMaxTwentynineModelObj:
            state.iphone11ProMaxTwentynineModelObj?.copyWith(
      waitingtextsectionItemList: fillWaitingtextsectionItemList(),
    )));
  }
}
