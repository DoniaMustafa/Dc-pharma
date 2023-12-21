// ignore_for_file: must_be_immutable

part of 'brand_infotwo_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoFourEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoFour widget is first created.
class BrandInfotwoFourInitialEvent extends BrandInfotwoFourEvent {
  @override
  List<Object?> get props => [];
}
