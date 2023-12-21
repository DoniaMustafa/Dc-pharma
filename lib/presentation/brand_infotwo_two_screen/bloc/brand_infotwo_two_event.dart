// ignore_for_file: must_be_immutable

part of 'brand_infotwo_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoTwoEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoTwo widget is first created.
class BrandInfotwoTwoInitialEvent extends BrandInfotwoTwoEvent {
  @override
  List<Object?> get props => [];
}
