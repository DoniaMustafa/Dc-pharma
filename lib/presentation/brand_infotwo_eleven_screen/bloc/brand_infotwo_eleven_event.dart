// ignore_for_file: must_be_immutable

part of 'brand_infotwo_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoElevenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoEleven widget is first created.
class BrandInfotwoElevenInitialEvent extends BrandInfotwoElevenEvent {
  @override
  List<Object?> get props => [];
}
