// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentyoneEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentyone widget is first created.
class Iphone11ProMaxTwentyoneInitialEvent extends Iphone11ProMaxTwentyoneEvent {
  @override
  List<Object?> get props => [];
}
