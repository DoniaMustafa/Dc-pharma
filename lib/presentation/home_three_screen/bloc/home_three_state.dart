// ignore_for_file: must_be_immutable

part of 'home_three_bloc.dart';

/// Represents the state of HomeThree in the application.
class HomeThreeState extends Equatable {
  HomeThreeState({
    this.sliderIndex = 0,
    this.homeThreeModelObj,
  });

  HomeThreeModel? homeThreeModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        homeThreeModelObj,
      ];
  HomeThreeState copyWith({
    int? sliderIndex,
    HomeThreeModel? homeThreeModelObj,
  }) {
    return HomeThreeState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeThreeModelObj: homeThreeModelObj ?? this.homeThreeModelObj,
    );
  }
}
