// ignore_for_file: must_be_immutable

part of 'home_four_bloc.dart';

/// Represents the state of HomeFour in the application.
class HomeFourState extends Equatable {
  HomeFourState({
    this.searchController,
    this.sliderIndex = 0,
    this.homeFourModelObj,
  });

  TextEditingController? searchController;

  HomeFourModel? homeFourModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        searchController,
        sliderIndex,
        homeFourModelObj,
      ];
  HomeFourState copyWith({
    TextEditingController? searchController,
    int? sliderIndex,
    HomeFourModel? homeFourModelObj,
  }) {
    return HomeFourState(
      searchController: searchController ?? this.searchController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      homeFourModelObj: homeFourModelObj ?? this.homeFourModelObj,
    );
  }
}
