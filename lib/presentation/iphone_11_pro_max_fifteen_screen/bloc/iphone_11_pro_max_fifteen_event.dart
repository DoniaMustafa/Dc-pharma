// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxFifteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxFifteen widget is first created.
class Iphone11ProMaxFifteenInitialEvent extends Iphone11ProMaxFifteenEvent {
  @override
  List<Object?> get props => [];
}
