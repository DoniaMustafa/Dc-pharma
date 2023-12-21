// ignore_for_file: must_be_immutable

part of 'brand_infotwo_four_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoFourTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoFourTabContainerEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoFourTabContainer widget is first created.
class BrandInfotwoFourTabContainerInitialEvent
    extends BrandInfotwoFourTabContainerEvent {
  @override
  List<Object?> get props => [];
}
