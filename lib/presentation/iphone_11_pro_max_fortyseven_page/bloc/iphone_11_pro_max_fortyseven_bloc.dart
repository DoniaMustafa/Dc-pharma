import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/section_item_model.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_fortyseven_page/models/iphone_11_pro_max_fortyseven_model.dart';
part 'iphone_11_pro_max_fortyseven_event.dart';
part 'iphone_11_pro_max_fortyseven_state.dart';

/// A bloc that manages the state of a Iphone11ProMaxFortyseven according to the event that is dispatched to it.
class Iphone11ProMaxFortysevenBloc
    extends Bloc<Iphone11ProMaxFortysevenEvent, Iphone11ProMaxFortysevenState> {
  Iphone11ProMaxFortysevenBloc(Iphone11ProMaxFortysevenState initialState)
      : super(initialState) {
    on<Iphone11ProMaxFortysevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone11ProMaxFortysevenInitialEvent event,
    Emitter<Iphone11ProMaxFortysevenState> emit,
  ) async {
    emit(state.copyWith(
        iphone11ProMaxFortysevenModelObj:
            state.iphone11ProMaxFortysevenModelObj?.copyWith(
      sectionItemList: fillSectionItemList(),
    )));
  }

  List<SectionItemModel> fillSectionItemList() {
    return [
      SectionItemModel(
          productName: "panadol advace",
          productCompany: "from : gsk company",
          productRating: "4.5",
          productReviews: "(1045 Reviews)",
          productPrice1: "235,00",
          productPrice2: "335,00")
    ];
  }
}
