// ignore_for_file: must_be_immutable

part of 'brand_infotwo_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoSevenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoSeven widget is first created.
class BrandInfotwoSevenInitialEvent extends BrandInfotwoSevenEvent {
  @override
  List<Object?> get props => [];
}
