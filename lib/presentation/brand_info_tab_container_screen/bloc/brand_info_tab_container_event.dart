// ignore_for_file: must_be_immutable

part of 'brand_info_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfoTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfoTabContainerEvent extends Equatable {}

/// Event that is dispatched when the BrandInfoTabContainer widget is first created.
class BrandInfoTabContainerInitialEvent extends BrandInfoTabContainerEvent {
  @override
  List<Object?> get props => [];
}
