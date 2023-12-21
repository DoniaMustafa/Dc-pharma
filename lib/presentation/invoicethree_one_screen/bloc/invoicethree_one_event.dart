// ignore_for_file: must_be_immutable

part of 'invoicethree_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InvoicethreeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InvoicethreeOneEvent extends Equatable {}

/// Event that is dispatched when the InvoicethreeOne widget is first created.
class InvoicethreeOneInitialEvent extends InvoicethreeOneEvent {
  @override
  List<Object?> get props => [];
}
