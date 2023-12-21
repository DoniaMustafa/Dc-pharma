// ignore_for_file: must_be_immutable

part of 'category_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryInfoEvent extends Equatable {}

/// Event that is dispatched when the CategoryInfo widget is first created.
class CategoryInfoInitialEvent extends CategoryInfoEvent {
  @override
  List<Object?> get props => [];
}
