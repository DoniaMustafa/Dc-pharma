// ignore_for_file: must_be_immutable

part of 'category_info_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryInfoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryInfoOneEvent extends Equatable {}

/// Event that is dispatched when the CategoryInfoOne widget is first created.
class CategoryInfoOneInitialEvent extends CategoryInfoOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CategoryInfoOneEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
