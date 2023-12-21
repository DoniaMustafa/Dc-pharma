// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentyfiveEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentyfive widget is first created.
class Iphone11ProMaxTwentyfiveInitialEvent
    extends Iphone11ProMaxTwentyfiveEvent {
  @override
  List<Object?> get props => [];
}
