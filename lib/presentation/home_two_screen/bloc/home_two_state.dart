// ignore_for_file: must_be_immutable

part of 'home_two_bloc.dart';

/// Represents the state of HomeTwo in the application.
class HomeTwoState extends Equatable {
  HomeTwoState({
    this.sliderIndex = 0,
    this.homeTwoModelObj,
  });

  HomeTwoModel? homeTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homeTwoModelObj,
      ];
  HomeTwoState copyWith({
    int? sliderIndex,
    HomeTwoModel? homeTwoModelObj,
  }) {
    return HomeTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeTwoModelObj: homeTwoModelObj ?? this.homeTwoModelObj,
    );
  }
}
