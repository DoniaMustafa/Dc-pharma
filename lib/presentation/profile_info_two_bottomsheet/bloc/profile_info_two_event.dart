// ignore_for_file: must_be_immutable

part of 'profile_info_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileInfoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileInfoTwoEvent extends Equatable {}

/// Event that is dispatched when the ProfileInfoTwo widget is first created.
class ProfileInfoTwoInitialEvent extends ProfileInfoTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends ProfileInfoTwoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends ProfileInfoTwoEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent2 extends ProfileInfoTwoEvent {
  ChangePasswordVisibilityEvent2({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
