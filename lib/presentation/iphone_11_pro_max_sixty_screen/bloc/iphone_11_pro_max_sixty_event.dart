// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixty_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSixty widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixtyEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSixty widget is first created.
class Iphone11ProMaxSixtyInitialEvent extends Iphone11ProMaxSixtyEvent {
  @override
  List<Object?> get props => [];
}
