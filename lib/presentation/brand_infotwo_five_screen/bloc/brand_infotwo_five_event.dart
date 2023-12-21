// ignore_for_file: must_be_immutable

part of 'brand_infotwo_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoFiveEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoFive widget is first created.
class BrandInfotwoFiveInitialEvent extends BrandInfotwoFiveEvent {
  @override
  List<Object?> get props => [];
}
