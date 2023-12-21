// ignore_for_file: must_be_immutable

part of 'brand_infotwo_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoOneEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoOne widget is first created.
class BrandInfotwoOneInitialEvent extends BrandInfotwoOneEvent {
  @override
  List<Object?> get props => [];
}
