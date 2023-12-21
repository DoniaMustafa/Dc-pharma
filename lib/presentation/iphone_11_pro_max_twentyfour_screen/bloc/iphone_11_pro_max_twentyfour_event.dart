// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentyfourEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentyfour widget is first created.
class Iphone11ProMaxTwentyfourInitialEvent
    extends Iphone11ProMaxTwentyfourEvent {
  @override
  List<Object?> get props => [];
}
