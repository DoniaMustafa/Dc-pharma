// ignore_for_file: must_be_immutable

part of 'invoicethree_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InvoicethreeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvoicethreeTwoEvent extends Equatable {}

/// Event that is dispatched when the InvoicethreeTwo widget is first created.
class InvoicethreeTwoInitialEvent extends InvoicethreeTwoEvent {
  @override
  List<Object?> get props => [];
}
