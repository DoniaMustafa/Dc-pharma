// ignore_for_file: must_be_immutable

part of 'country_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Country widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CountryEvent extends Equatable {}

/// Event that is dispatched when the Country widget is first created.
class CountryInitialEvent extends CountryEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends CountryEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends CountryEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
