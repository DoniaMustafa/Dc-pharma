// ignore_for_file: must_be_immutable

part of 'brand_infotwo_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoThirteenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoThirteen widget is first created.
class BrandInfotwoThirteenInitialEvent extends BrandInfotwoThirteenEvent {
  @override
  List<Object?> get props => [];
}
