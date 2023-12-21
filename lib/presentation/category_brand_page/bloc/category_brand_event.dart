// ignore_for_file: must_be_immutable

part of 'category_brand_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryBrand widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryBrandEvent extends Equatable {}

/// Event that is dispatched when the CategoryBrand widget is first created.
class CategoryBrandInitialEvent extends CategoryBrandEvent {
  @override
  List<Object?> get props => [];
}
