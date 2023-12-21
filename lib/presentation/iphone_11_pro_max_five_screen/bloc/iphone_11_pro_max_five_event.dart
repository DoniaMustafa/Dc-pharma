// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxFiveEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxFive widget is first created.
class Iphone11ProMaxFiveInitialEvent extends Iphone11ProMaxFiveEvent {
  @override
  List<Object?> get props => [];
}
