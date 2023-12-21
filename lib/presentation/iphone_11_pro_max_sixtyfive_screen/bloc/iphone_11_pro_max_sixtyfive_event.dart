// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtyfive_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSixtyfive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixtyfiveEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSixtyfive widget is first created.
class Iphone11ProMaxSixtyfiveInitialEvent extends Iphone11ProMaxSixtyfiveEvent {
  @override
  List<Object?> get props => [];
}
