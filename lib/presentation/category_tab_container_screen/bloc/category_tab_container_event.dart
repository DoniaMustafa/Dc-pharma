// ignore_for_file: must_be_immutable

part of 'category_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryTabContainerEvent extends Equatable {}

/// Event that is dispatched when the CategoryTabContainer widget is first created.
class CategoryTabContainerInitialEvent extends CategoryTabContainerEvent {
  @override
  List<Object?> get props => [];
}
