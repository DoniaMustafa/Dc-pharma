// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fiftynine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxFiftynine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxFiftynineEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxFiftynine widget is first created.
class Iphone11ProMaxFiftynineInitialEvent extends Iphone11ProMaxFiftynineEvent {
  @override
  List<Object?> get props => [];
}
