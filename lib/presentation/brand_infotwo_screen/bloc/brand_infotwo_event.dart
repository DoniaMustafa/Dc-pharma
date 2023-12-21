// ignore_for_file: must_be_immutable

part of 'brand_infotwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwo widget is first created.
class BrandInfotwoInitialEvent extends BrandInfotwoEvent {
  @override
  List<Object?> get props => [];
}
