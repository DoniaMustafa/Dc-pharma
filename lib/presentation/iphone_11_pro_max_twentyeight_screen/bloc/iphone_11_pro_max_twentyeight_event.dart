// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentyeightEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentyeight widget is first created.
class Iphone11ProMaxTwentyeightInitialEvent
    extends Iphone11ProMaxTwentyeightEvent {
  @override
  List<Object?> get props => [];
}
