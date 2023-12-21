// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_thirtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxThirtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxThirtyfourEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxThirtyfour widget is first created.
class Iphone11ProMaxThirtyfourInitialEvent
    extends Iphone11ProMaxThirtyfourEvent {
  @override
  List<Object?> get props => [];
}
