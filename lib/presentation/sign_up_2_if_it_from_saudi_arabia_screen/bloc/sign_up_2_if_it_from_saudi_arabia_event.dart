// ignore_for_file: must_be_immutable

part of 'sign_up_2_if_it_from_saudi_arabia_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUp2IfItFromSaudiArabia widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUp2IfItFromSaudiArabiaEvent extends Equatable {}

/// Event that is dispatched when the SignUp2IfItFromSaudiArabia widget is first created.
class SignUp2IfItFromSaudiArabiaInitialEvent
    extends SignUp2IfItFromSaudiArabiaEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignUp2IfItFromSaudiArabiaEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
