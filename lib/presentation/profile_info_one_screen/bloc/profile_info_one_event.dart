// ignore_for_file: must_be_immutable

part of 'profile_info_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileInfoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileInfoOneEvent extends Equatable {}

/// Event that is dispatched when the ProfileInfoOne widget is first created.
class ProfileInfoOneInitialEvent extends ProfileInfoOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends ProfileInfoOneEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
