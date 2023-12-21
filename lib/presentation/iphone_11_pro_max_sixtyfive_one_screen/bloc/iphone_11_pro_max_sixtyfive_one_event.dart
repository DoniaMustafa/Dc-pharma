// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtyfive_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSixtyfiveOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixtyfiveOneEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSixtyfiveOne widget is first created.
class Iphone11ProMaxSixtyfiveOneInitialEvent
    extends Iphone11ProMaxSixtyfiveOneEvent {
  @override
  List<Object?> get props => [];
}
