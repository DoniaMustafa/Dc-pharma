// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentynineEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentynine widget is first created.
class Iphone11ProMaxTwentynineInitialEvent
    extends Iphone11ProMaxTwentynineEvent {
  @override
  List<Object?> get props => [];
}
