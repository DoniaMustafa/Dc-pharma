// ignore_for_file: must_be_immutable

part of 'invoicethree_two_bloc.dart';

/// Represents the state of InvoicethreeTwo in the application.
class InvoicethreeTwoState extends Equatable {
  InvoicethreeTwoState({
    this.coupondiscountsalevouchericonOController,
    this.invoicethreeTwoModelObj,
  });

  TextEditingController? coupondiscountsalevouchericonOController;

  InvoicethreeTwoModel? invoicethreeTwoModelObj;

  @override
  List<Object?> get props => [
        coupondiscountsalevouchericonOController,
        invoicethreeTwoModelObj,
      ];
  InvoicethreeTwoState copyWith({
    TextEditingController? coupondiscountsalevouchericonOController,
    InvoicethreeTwoModel? invoicethreeTwoModelObj,
  }) {
    return InvoicethreeTwoState(
      coupondiscountsalevouchericonOController:
          coupondiscountsalevouchericonOController ??
              this.coupondiscountsalevouchericonOController,
      invoicethreeTwoModelObj:
          invoicethreeTwoModelObj ?? this.invoicethreeTwoModelObj,
    );
  }
}
