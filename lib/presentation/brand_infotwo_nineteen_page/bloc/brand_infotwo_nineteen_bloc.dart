import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/orderdetailslist1_item_model.dart';import 'package:drfarama/presentation/brand_infotwo_nineteen_page/models/brand_infotwo_nineteen_model.dart';part 'brand_infotwo_nineteen_event.dart';part 'brand_infotwo_nineteen_state.dart';/// A bloc that manages the state of a BrandInfotwoNineteen according to the event that is dispatched to it.
class BrandInfotwoNineteenBloc extends Bloc<BrandInfotwoNineteenEvent, BrandInfotwoNineteenState> {BrandInfotwoNineteenBloc(BrandInfotwoNineteenState initialState) : super(initialState) { on<BrandInfotwoNineteenInitialEvent>(_onInitialize); }

_onInitialize(BrandInfotwoNineteenInitialEvent event, Emitter<BrandInfotwoNineteenState> emit, ) async  { emit(state.copyWith(brandInfotwoNineteenModelObj: state.brandInfotwoNineteenModelObj?.copyWith(orderdetailslist1ItemList: fillOrderdetailslist1ItemList()))); } 
List<Orderdetailslist1ItemModel> fillOrderdetailslist1ItemList() { return [Orderdetailslist1ItemModel(onTheWayText: "On the way to you", billNumberText: "Bill NO.23455-64327", orderDateText: "ordered 20/11/2023", priceText: "235,00", paymentStatusText: "Payment status:", paymentMethodText: "Paiement when recieving"), Orderdetailslist1ItemModel(paymentStatusText: "Payment status:", paymentMethodText: "Paiement when recieving"), Orderdetailslist1ItemModel(paymentStatusText: "Payment status:", paymentMethodText: "Paiement when recieving")]; } 
 }