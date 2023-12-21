// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThirtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThirtyoneEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThirtyone widget is first created.
class Iphone11ProMaxThirtyoneInitialEvent extends Iphone11ProMaxThirtyoneEvent {
  @override
  List<Object?> get props => [];
}
