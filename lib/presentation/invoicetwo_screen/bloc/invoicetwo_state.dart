// ignore_for_file: must_be_immutable

part of 'invoicetwo_bloc.dart';

/// Represents the state of Invoicetwo in the application.
class InvoicetwoState extends Equatable {
  InvoicetwoState({
    this.group1042Controller,
    this.invoicetwoModelObj,
  });

  TextEditingController? group1042Controller;

  InvoicetwoModel? invoicetwoModelObj;

  @override
  List<Object?> get props => [
        group1042Controller,
        invoicetwoModelObj,
      ];
  InvoicetwoState copyWith({
    TextEditingController? group1042Controller,
    InvoicetwoModel? invoicetwoModelObj,
  }) {
    return InvoicetwoState(
      group1042Controller: group1042Controller ?? this.group1042Controller,
      invoicetwoModelObj: invoicetwoModelObj ?? this.invoicetwoModelObj,
    );
  }
}
