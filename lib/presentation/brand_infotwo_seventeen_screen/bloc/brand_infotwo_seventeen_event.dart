// ignore_for_file: must_be_immutable

part of 'brand_infotwo_seventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoSeventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoSeventeenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoSeventeen widget is first created.
class BrandInfotwoSeventeenInitialEvent extends BrandInfotwoSeventeenEvent {
  @override
  List<Object?> get props => [];
}
