// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxElevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxEleven widget is first created.
class Iphone11ProMaxElevenInitialEvent extends Iphone11ProMaxElevenEvent {
  @override
  List<Object?> get props => [];
}
