// ignore_for_file: must_be_immutable

part of 'brand_infotwo_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoThreeEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoThree widget is first created.
class BrandInfotwoThreeInitialEvent extends BrandInfotwoThreeEvent {
  @override
  List<Object?> get props => [];
}
