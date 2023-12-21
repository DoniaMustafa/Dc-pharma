// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThirtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThirtythreeEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThirtythree widget is first created.
class Iphone11ProMaxThirtythreeInitialEvent
    extends Iphone11ProMaxThirtythreeEvent {
  @override
  List<Object?> get props => [];
}
