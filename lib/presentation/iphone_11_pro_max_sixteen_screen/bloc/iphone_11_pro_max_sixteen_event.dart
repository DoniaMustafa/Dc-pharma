// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSixteen widget is first created.
class Iphone11ProMaxSixteenInitialEvent extends Iphone11ProMaxSixteenEvent {
  @override
  List<Object?> get props => [];
}
