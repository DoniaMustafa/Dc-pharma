// ignore_for_file: must_be_immutable

part of 'category_info_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryInfoThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryInfoThreeEvent extends Equatable {}

/// Event that is dispatched when the CategoryInfoThree widget is first created.
class CategoryInfoThreeInitialEvent extends CategoryInfoThreeEvent {
  @override
  List<Object?> get props => [];
}
