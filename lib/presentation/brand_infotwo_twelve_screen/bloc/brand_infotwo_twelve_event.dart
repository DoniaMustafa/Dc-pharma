// ignore_for_file: must_be_immutable

part of 'brand_infotwo_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoTwelveEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoTwelve widget is first created.
class BrandInfotwoTwelveInitialEvent extends BrandInfotwoTwelveEvent {
  @override
  List<Object?> get props => [];
}
