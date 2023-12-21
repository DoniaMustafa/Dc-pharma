// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThirteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThirteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThirteen widget is first created.
class Iphone11ProMaxThirteenInitialEvent extends Iphone11ProMaxThirteenEvent {
  @override
  List<Object?> get props => [];
}
