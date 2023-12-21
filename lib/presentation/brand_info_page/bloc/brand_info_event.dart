// ignore_for_file: must_be_immutable

part of 'brand_info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfoEvent extends Equatable {}

/// Event that is dispatched when the BrandInfo widget is first created.
class BrandInfoInitialEvent extends BrandInfoEvent {
  @override
  List<Object?> get props => [];
}
