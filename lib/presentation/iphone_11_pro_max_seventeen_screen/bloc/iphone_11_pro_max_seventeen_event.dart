// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_seventeen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSeventeen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSeventeenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSeventeen widget is first created.
class Iphone11ProMaxSeventeenInitialEvent extends Iphone11ProMaxSeventeenEvent {
  @override
  List<Object?> get props => [];
}
