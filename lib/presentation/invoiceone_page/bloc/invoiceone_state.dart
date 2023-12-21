// ignore_for_file: must_be_immutable

part of 'invoiceone_bloc.dart';

/// Represents the state of Invoiceone in the application.
class InvoiceoneState extends Equatable {
  InvoiceoneState({this.invoiceoneModelObj});

  InvoiceoneModel? invoiceoneModelObj;

  @override
  List<Object?> get props => [
        invoiceoneModelObj,
      ];
  InvoiceoneState copyWith({InvoiceoneModel? invoiceoneModelObj}) {
    return InvoiceoneState(
      invoiceoneModelObj: invoiceoneModelObj ?? this.invoiceoneModelObj,
    );
  }
}
