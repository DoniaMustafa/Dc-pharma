// ignore_for_file: must_be_immutable

part of 'sign_up_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpFourEvent extends Equatable {}

/// Event that is dispatched when the SignUpFour widget is first created.
class SignUpFourInitialEvent extends SignUpFourEvent {
  @override
  List<Object?> get props => [];
}
