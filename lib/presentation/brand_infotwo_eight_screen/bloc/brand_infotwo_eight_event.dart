// ignore_for_file: must_be_immutable

part of 'brand_infotwo_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoEightEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoEight widget is first created.
class BrandInfotwoEightInitialEvent extends BrandInfotwoEightEvent {
  @override
  List<Object?> get props => [];
}
