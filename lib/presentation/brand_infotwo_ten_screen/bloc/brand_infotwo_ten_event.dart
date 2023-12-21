// ignore_for_file: must_be_immutable

part of 'brand_infotwo_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoTenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoTen widget is first created.
class BrandInfotwoTenInitialEvent extends BrandInfotwoTenEvent {
  @override
  List<Object?> get props => [];
}
