// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtyfive_bloc.dart';

/// Represents the state of Iphone11ProMaxSixtyfive in the application.
class Iphone11ProMaxSixtyfiveState extends Equatable {
  Iphone11ProMaxSixtyfiveState({
    this.sliderIndex = 0,
    this.iphone11ProMaxSixtyfiveModelObj,
  });

  Iphone11ProMaxSixtyfiveModel? iphone11ProMaxSixtyfiveModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        iphone11ProMaxSixtyfiveModelObj,
      ];
  Iphone11ProMaxSixtyfiveState copyWith({
    int? sliderIndex,
    Iphone11ProMaxSixtyfiveModel? iphone11ProMaxSixtyfiveModelObj,
  }) {
    return Iphone11ProMaxSixtyfiveState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      iphone11ProMaxSixtyfiveModelObj: iphone11ProMaxSixtyfiveModelObj ??
          this.iphone11ProMaxSixtyfiveModelObj,
    );
  }
}
