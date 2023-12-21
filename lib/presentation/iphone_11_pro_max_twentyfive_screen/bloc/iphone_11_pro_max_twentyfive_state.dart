// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twentyfive_bloc.dart';

/// Represents the state of Iphone11ProMaxTwentyfive in the application.
class Iphone11ProMaxTwentyfiveState extends Equatable {
  Iphone11ProMaxTwentyfiveState({this.iphone11ProMaxTwentyfiveModelObj});

  Iphone11ProMaxTwentyfiveModel? iphone11ProMaxTwentyfiveModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTwentyfiveModelObj,
      ];
  Iphone11ProMaxTwentyfiveState copyWith(
      {Iphone11ProMaxTwentyfiveModel? iphone11ProMaxTwentyfiveModelObj}) {
    return Iphone11ProMaxTwentyfiveState(
      iphone11ProMaxTwentyfiveModelObj: iphone11ProMaxTwentyfiveModelObj ??
          this.iphone11ProMaxTwentyfiveModelObj,
    );
  }
}
