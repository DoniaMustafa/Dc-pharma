// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_eighteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxEighteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxEighteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxEighteen widget is first created.
class Iphone11ProMaxEighteenInitialEvent extends Iphone11ProMaxEighteenEvent {
  @override
  List<Object?> get props => [];
}
