// ignore_for_file: must_be_immutable

part of 'brand_infotwo_fourteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoFourteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoFourteenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoFourteen widget is first created.
class BrandInfotwoFourteenInitialEvent extends BrandInfotwoFourteenEvent {
  @override
  List<Object?> get props => [];
}
