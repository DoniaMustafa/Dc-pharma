// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fortyseven_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxFortysevenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxFortysevenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxFortysevenTabContainer widget is first created.
class Iphone11ProMaxFortysevenTabContainerInitialEvent
    extends Iphone11ProMaxFortysevenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
