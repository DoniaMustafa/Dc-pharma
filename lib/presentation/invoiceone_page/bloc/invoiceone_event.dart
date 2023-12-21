// ignore_for_file: must_be_immutable

part of 'invoiceone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Invoiceone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvoiceoneEvent extends Equatable {}

/// Event that is dispatched when the Invoiceone widget is first created.
class InvoiceoneInitialEvent extends InvoiceoneEvent {
  @override
  List<Object?> get props => [];
}
