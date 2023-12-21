// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_five_bloc.dart';

/// Represents the state of Iphone11ProMaxFive in the application.
class Iphone11ProMaxFiveState extends Equatable {
  Iphone11ProMaxFiveState({this.iphone11ProMaxFiveModelObj});

  Iphone11ProMaxFiveModel? iphone11ProMaxFiveModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxFiveModelObj,
      ];
  Iphone11ProMaxFiveState copyWith(
      {Iphone11ProMaxFiveModel? iphone11ProMaxFiveModelObj}) {
    return Iphone11ProMaxFiveState(
      iphone11ProMaxFiveModelObj:
          iphone11ProMaxFiveModelObj ?? this.iphone11ProMaxFiveModelObj,
    );
  }
}
