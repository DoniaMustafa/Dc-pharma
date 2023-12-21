// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_eleven_bloc.dart';

/// Represents the state of Iphone11ProMaxEleven in the application.
class Iphone11ProMaxElevenState extends Equatable {
  Iphone11ProMaxElevenState({this.iphone11ProMaxElevenModelObj});

  Iphone11ProMaxElevenModel? iphone11ProMaxElevenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxElevenModelObj,
      ];
  Iphone11ProMaxElevenState copyWith(
      {Iphone11ProMaxElevenModel? iphone11ProMaxElevenModelObj}) {
    return Iphone11ProMaxElevenState(
      iphone11ProMaxElevenModelObj:
          iphone11ProMaxElevenModelObj ?? this.iphone11ProMaxElevenModelObj,
    );
  }
}
