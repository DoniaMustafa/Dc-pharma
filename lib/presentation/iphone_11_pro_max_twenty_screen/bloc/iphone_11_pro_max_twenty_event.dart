// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twenty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwenty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentyEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwenty widget is first created.
class Iphone11ProMaxTwentyInitialEvent extends Iphone11ProMaxTwentyEvent {
  @override
  List<Object?> get props => [];
}
