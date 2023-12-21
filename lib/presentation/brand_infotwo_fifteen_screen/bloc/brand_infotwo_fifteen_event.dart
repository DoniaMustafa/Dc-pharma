// ignore_for_file: must_be_immutable

part of 'brand_infotwo_fifteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoFifteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoFifteenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoFifteen widget is first created.
class BrandInfotwoFifteenInitialEvent extends BrandInfotwoFifteenEvent {
  @override
  List<Object?> get props => [];
}
