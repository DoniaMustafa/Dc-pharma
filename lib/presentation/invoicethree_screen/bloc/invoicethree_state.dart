// ignore_for_file: must_be_immutable

part of 'invoicethree_bloc.dart';

/// Represents the state of Invoicethree in the application.
class InvoicethreeState extends Equatable {
  InvoicethreeState({
    this.coupondiscountsalevouchericonOController,
    this.invoicethreeModelObj,
  });

  TextEditingController? coupondiscountsalevouchericonOController;

  InvoicethreeModel? invoicethreeModelObj;

  @override
  List<Object?> get props => [
        coupondiscountsalevouchericonOController,
        invoicethreeModelObj,
      ];
  InvoicethreeState copyWith({
    TextEditingController? coupondiscountsalevouchericonOController,
    InvoicethreeModel? invoicethreeModelObj,
  }) {
    return InvoicethreeState(
      coupondiscountsalevouchericonOController:
          coupondiscountsalevouchericonOController ??
              this.coupondiscountsalevouchericonOController,
      invoicethreeModelObj: invoicethreeModelObj ?? this.invoicethreeModelObj,
    );
  }
}
