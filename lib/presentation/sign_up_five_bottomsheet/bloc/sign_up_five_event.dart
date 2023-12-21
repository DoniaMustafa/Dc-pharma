// ignore_for_file: must_be_immutable

part of 'sign_up_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpFiveEvent extends Equatable {}

/// Event that is dispatched when the SignUpFive widget is first created.
class SignUpFiveInitialEvent extends SignUpFiveEvent {
  @override
  List<Object?> get props => [];
}
