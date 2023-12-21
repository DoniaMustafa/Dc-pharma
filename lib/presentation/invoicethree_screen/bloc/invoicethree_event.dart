// ignore_for_file: must_be_immutable

part of 'invoicethree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Invoicethree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvoicethreeEvent extends Equatable {}

/// Event that is dispatched when the Invoicethree widget is first created.
class InvoicethreeInitialEvent extends InvoicethreeEvent {
  @override
  List<Object?> get props => [];
}
