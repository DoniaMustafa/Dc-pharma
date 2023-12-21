// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwelveEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwelve widget is first created.
class Iphone11ProMaxTwelveInitialEvent extends Iphone11ProMaxTwelveEvent {
  @override
  List<Object?> get props => [];
}
