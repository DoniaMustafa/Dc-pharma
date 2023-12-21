// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtytwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSixtytwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixtytwoEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSixtytwo widget is first created.
class Iphone11ProMaxSixtytwoInitialEvent extends Iphone11ProMaxSixtytwoEvent {
  @override
  List<Object?> get props => [];
}
