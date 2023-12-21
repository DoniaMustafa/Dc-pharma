// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentytwoEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentytwo widget is first created.
class Iphone11ProMaxTwentytwoInitialEvent extends Iphone11ProMaxTwentytwoEvent {
  @override
  List<Object?> get props => [];
}
