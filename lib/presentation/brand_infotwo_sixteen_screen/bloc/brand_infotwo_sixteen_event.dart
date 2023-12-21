// ignore_for_file: must_be_immutable

part of 'brand_infotwo_sixteen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BrandInfotwoSixteen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BrandInfotwoSixteenEvent extends Equatable {}

/// Event that is dispatched when the BrandInfotwoSixteen widget is first created.
class BrandInfotwoSixteenInitialEvent extends BrandInfotwoSixteenEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends BrandInfotwoSixteenEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
