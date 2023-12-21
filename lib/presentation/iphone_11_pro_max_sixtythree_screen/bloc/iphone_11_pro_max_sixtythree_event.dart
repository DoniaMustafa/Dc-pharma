// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtythree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSixtythree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixtythreeEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSixtythree widget is first created.
class Iphone11ProMaxSixtythreeInitialEvent
    extends Iphone11ProMaxSixtythreeEvent {
  @override
  List<Object?> get props => [];
}
