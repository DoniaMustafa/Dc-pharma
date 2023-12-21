// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone11ProMaxSixtyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Iphone11ProMaxSixtyfourEvent extends Equatable {}

/// Event that is dispatched when the Iphone11ProMaxSixtyfour widget is first created.
class Iphone11ProMaxSixtyfourInitialEvent extends Iphone11ProMaxSixtyfourEvent {
  @override
  List<Object?> get props => [];
}
