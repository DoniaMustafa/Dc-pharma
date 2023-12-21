// ignore_for_file: must_be_immutable

part of 'brand_infotwo_nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoNineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoNineteenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoNineteen widget is first created.
class BrandInfotwoNineteenInitialEvent extends BrandInfotwoNineteenEvent {
  @override
  List<Object?> get props => [];
}
