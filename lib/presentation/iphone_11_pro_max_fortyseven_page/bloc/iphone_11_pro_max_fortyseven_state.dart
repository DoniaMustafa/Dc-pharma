// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fortyseven_bloc.dart';

/// Represents the state of Iphone11ProMaxFortyseven in the application.
class Iphone11ProMaxFortysevenState extends Equatable {
  Iphone11ProMaxFortysevenState({this.iphone11ProMaxFortysevenModelObj});

  Iphone11ProMaxFortysevenModel? iphone11ProMaxFortysevenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxFortysevenModelObj,
      ];
  Iphone11ProMaxFortysevenState copyWith(
      {Iphone11ProMaxFortysevenModel? iphone11ProMaxFortysevenModelObj}) {
    return Iphone11ProMaxFortysevenState(
      iphone11ProMaxFortysevenModelObj: iphone11ProMaxFortysevenModelObj ??
          this.iphone11ProMaxFortysevenModelObj,
    );
  }
}
