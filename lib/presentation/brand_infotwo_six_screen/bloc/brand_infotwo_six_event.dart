// ignore_for_file: must_be_immutable

part of 'brand_infotwo_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoSixEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoSix widget is first created.
class BrandInfotwoSixInitialEvent extends BrandInfotwoSixEvent {
  @override
  List<Object?> get props => [];
}
