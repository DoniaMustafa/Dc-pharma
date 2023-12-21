// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_fiftynine_bloc.dart';

/// Represents the state of Iphone11ProMaxFiftynine in the application.
class Iphone11ProMaxFiftynineState extends Equatable {
  Iphone11ProMaxFiftynineState({this.iphone11ProMaxFiftynineModelObj});

  Iphone11ProMaxFiftynineModel? iphone11ProMaxFiftynineModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxFiftynineModelObj,
      ];
  Iphone11ProMaxFiftynineState copyWith(
      {Iphone11ProMaxFiftynineModel? iphone11ProMaxFiftynineModelObj}) {
    return Iphone11ProMaxFiftynineState(
      iphone11ProMaxFiftynineModelObj: iphone11ProMaxFiftynineModelObj ??
          this.iphone11ProMaxFiftynineModelObj,
    );
  }
}
