// ignore_for_file: must_be_immutable

part of 'category_info_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryInfoTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryInfoTabContainerEvent extends Equatable {}

/// Event that is dispatched when the CategoryInfoTabContainer widget is first created.
class CategoryInfoTabContainerInitialEvent
    extends CategoryInfoTabContainerEvent {
  @override
  List<Object?> get props => [];
}
