// ignore_for_file: must_be_immutable

part of 'brand_infotwo_eighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoEighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoEighteenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoEighteen widget is first created.
class BrandInfotwoEighteenInitialEvent extends BrandInfotwoEighteenEvent {
  @override
  List<Object?> get props => [];
}
