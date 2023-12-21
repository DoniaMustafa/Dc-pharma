// ignore_for_file: must_be_immutable

part of 'profile_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileInfoEvent extends Equatable {}

/// Event that is dispatched when the ProfileInfo widget is first created.
class ProfileInfoInitialEvent extends ProfileInfoEvent {
  @override
  List<Object?> get props => [];
}
