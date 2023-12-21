// ignore_for_file: must_be_immutable

part of 'invoicetwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Invoicetwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvoicetwoEvent extends Equatable {}

/// Event that is dispatched when the Invoicetwo widget is first created.
class InvoicetwoInitialEvent extends InvoicetwoEvent {
  @override
  List<Object?> get props => [];
}
