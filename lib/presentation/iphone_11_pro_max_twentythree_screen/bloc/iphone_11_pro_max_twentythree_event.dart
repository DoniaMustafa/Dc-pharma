// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentythreeEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentythree widget is first created.
class Iphone11ProMaxTwentythreeInitialEvent
    extends Iphone11ProMaxTwentythreeEvent {
  @override
  List<Object?> get props => [];
}
