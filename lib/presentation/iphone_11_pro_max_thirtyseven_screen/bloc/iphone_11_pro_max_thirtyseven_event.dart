// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThirtyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThirtysevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThirtyseven widget is first created.
class Iphone11ProMaxThirtysevenInitialEvent
    extends Iphone11ProMaxThirtysevenEvent {
  @override
  List<Object?> get props => [];
}
