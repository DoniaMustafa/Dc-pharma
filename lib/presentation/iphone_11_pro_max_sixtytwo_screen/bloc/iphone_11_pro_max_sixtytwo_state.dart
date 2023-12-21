// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtytwo_bloc.dart';

/// Represents the state of Iphone11ProMaxSixtytwo in the application.
class Iphone11ProMaxSixtytwoState extends Equatable {
  Iphone11ProMaxSixtytwoState({this.iphone11ProMaxSixtytwoModelObj});

  Iphone11ProMaxSixtytwoModel? iphone11ProMaxSixtytwoModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxSixtytwoModelObj,
      ];
  Iphone11ProMaxSixtytwoState copyWith(
      {Iphone11ProMaxSixtytwoModel? iphone11ProMaxSixtytwoModelObj}) {
    return Iphone11ProMaxSixtytwoState(
      iphone11ProMaxSixtytwoModelObj:
          iphone11ProMaxSixtytwoModelObj ?? this.iphone11ProMaxSixtytwoModelObj,
    );
  }
}
