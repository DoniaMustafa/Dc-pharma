// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_nineteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxNineteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxNineteenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxNineteen widget is first created.
class Iphone11ProMaxNineteenInitialEvent extends Iphone11ProMaxNineteenEvent {
  @override
  List<Object?> get props => [];
}
