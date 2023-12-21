// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtyone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSixtyone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixtyoneEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSixtyone widget is first created.
class Iphone11ProMaxSixtyoneInitialEvent extends Iphone11ProMaxSixtyoneEvent {
  @override
  List<Object?> get props => [];
}
