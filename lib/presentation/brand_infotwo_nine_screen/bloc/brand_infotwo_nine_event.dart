// ignore_for_file: must_be_immutable

part of 'brand_infotwo_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoNineEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoNine widget is first created.
class BrandInfotwoNineInitialEvent extends BrandInfotwoNineEvent {
  @override
  List<Object?> get props => [];
}
