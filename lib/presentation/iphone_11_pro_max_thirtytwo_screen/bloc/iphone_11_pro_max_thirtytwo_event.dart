// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThirtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThirtytwoEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThirtytwo widget is first created.
class Iphone11ProMaxThirtytwoInitialEvent extends Iphone11ProMaxThirtytwoEvent {
  @override
  List<Object?> get props => [];
}
