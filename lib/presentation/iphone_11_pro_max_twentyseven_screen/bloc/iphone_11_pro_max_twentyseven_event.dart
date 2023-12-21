// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentysevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentyseven widget is first created.
class Iphone11ProMaxTwentysevenInitialEvent
    extends Iphone11ProMaxTwentysevenEvent {
  @override
  List<Object?> get props => [];
}
