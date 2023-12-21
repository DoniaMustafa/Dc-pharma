// ignore_for_file: must_be_immutable

part of 'category_info_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryInfoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryInfoTwoEvent extends Equatable {}

/// Event that is dispatched when the CategoryInfoTwo widget is first created.
class CategoryInfoTwoInitialEvent extends CategoryInfoTwoEvent {
  @override
  List<Object?> get props => [];
}
