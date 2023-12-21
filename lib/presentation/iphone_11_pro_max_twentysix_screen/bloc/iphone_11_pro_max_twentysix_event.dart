// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentysix_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxTwentysix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxTwentysixEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxTwentysix widget is first created.
class Iphone11ProMaxTwentysixInitialEvent extends Iphone11ProMaxTwentysixEvent {
  @override
  List<Object?> get props => [];
}
