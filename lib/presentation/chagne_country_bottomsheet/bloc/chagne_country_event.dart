// ignore_for_file: must_be_immutable

part of 'chagne_country_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChagneCountry widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChagneCountryEvent extends Equatable {}

/// Event that is dispatched when the ChagneCountry widget is first created.
class ChagneCountryInitialEvent extends ChagneCountryEvent {
  @override
  List<Object?> get props => [];
}
