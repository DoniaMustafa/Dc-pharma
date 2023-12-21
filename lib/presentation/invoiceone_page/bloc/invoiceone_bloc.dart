import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/productcard5_item_model.dart';
import 'package:drfarama/presentation/invoiceone_page/models/invoiceone_model.dart';
part 'invoiceone_event.dart';
part 'invoiceone_state.dart';

/// A bloc that manages the state of a Invoiceone according to the event that is dispatched to it.
class InvoiceoneBloc extends Bloc<InvoiceoneEvent, InvoiceoneState> {
  InvoiceoneBloc(InvoiceoneState initialState) : super(initialState) {
    on<InvoiceoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InvoiceoneInitialEvent event,
    Emitter<InvoiceoneState> emit,
  ) async {
    emit(state.copyWith(
        invoiceoneModelObj: state.invoiceoneModelObj?.copyWith(
      productcard5ItemList: fillProductcard5ItemList(),
    )));
  }

  List<Productcard5ItemModel> fillProductcard5ItemList() {
    return [
      Productcard5ItemModel(
          productName: "panadol advace",
          productCompany: "from : gsk company",
          productRating: "4.5",
          productReviews: "(1045 Reviews)",
          productPrice1: "235,00",
          productPrice2: "335,00",
          productCount: "3",
          plusIcon: "+"),
      Productcard5ItemModel(
          productName: "panadol advace",
          productCompany: "from : gsk company",
          productRating: "4.5",
          productReviews: "(1045 Reviews)",
          productPrice1: "235,00",
          productPrice2: "335,00",
          productCount: "3")
    ];
  }
}
