// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fortyseven_tab_container_bloc.dart';

/// Represents the state of Iphone11ProMaxFortysevenTabContainer in the application.
class Iphone11ProMaxFortysevenTabContainerState extends Equatable {
  Iphone11ProMaxFortysevenTabContainerState({
    this.sliderIndex = 0,
    this.iphone11ProMaxFortysevenTabContainerModelObj,
  });

  Iphone11ProMaxFortysevenTabContainerModel?
      iphone11ProMaxFortysevenTabContainerModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxFortysevenTabContainerModelObj,
      ];
  Iphone11ProMaxFortysevenTabContainerState copyWith({
    int? sliderIndex,
    Iphone11ProMaxFortysevenTabContainerModel?
        iphone11ProMaxFortysevenTabContainerModelObj,
  }) {
    return Iphone11ProMaxFortysevenTabContainerState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxFortysevenTabContainerModelObj:
          iphone11ProMaxFortysevenTabContainerModelObj ??
              this.iphone11ProMaxFortysevenTabContainerModelObj,
    );
  }
}
