// ignore_for_file: must_be_immutable

part of 'flash_sale_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FlashSale widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FlashSaleEvent extends Equatable {}

/// Event that is dispatched when the FlashSale widget is first created.
class FlashSaleInitialEvent extends FlashSaleEvent {
  @override
  List<Object?> get props => [];
}
