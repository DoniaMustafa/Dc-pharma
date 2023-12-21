// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fortyseven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxFortyseven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxFortysevenEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxFortyseven widget is first created.
class Iphone11ProMaxFortysevenInitialEvent
    extends Iphone11ProMaxFortysevenEvent {
  @override
  List<Object?> get props => [];
}
