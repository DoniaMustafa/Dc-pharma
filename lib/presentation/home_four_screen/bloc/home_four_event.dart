// ignore_for_file: must_be_immutable

part of 'home_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeFourEvent extends Equatable {}

/// Event that is dispatched when the HomeFour widget is first created.
class HomeFourInitialEvent extends HomeFourEvent {
  @override
  List<Object?> get props => [];
}
