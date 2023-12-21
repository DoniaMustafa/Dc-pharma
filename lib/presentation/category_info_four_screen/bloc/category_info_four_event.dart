// ignore_for_file: must_be_immutable

part of 'category_info_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryInfoFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryInfoFourEvent extends Equatable {}

/// Event that is dispatched when the CategoryInfoFour widget is first created.
class CategoryInfoFourInitialEvent extends CategoryInfoFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends CategoryInfoFourEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
