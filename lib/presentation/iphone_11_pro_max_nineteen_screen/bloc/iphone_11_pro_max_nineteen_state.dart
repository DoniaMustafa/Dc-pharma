// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_nineteen_bloc.dart';

/// Represents the state of Iphone11ProMaxNineteen in the application.
class Iphone11ProMaxNineteenState extends Equatable {
  Iphone11ProMaxNineteenState({this.iphone11ProMaxNineteenModelObj});

  Iphone11ProMaxNineteenModel? iphone11ProMaxNineteenModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxNineteenModelObj,
      ];
  Iphone11ProMaxNineteenState copyWith(
      {Iphone11ProMaxNineteenModel? iphone11ProMaxNineteenModelObj}) {
    return Iphone11ProMaxNineteenState(
      iphone11ProMaxNineteenModelObj:
          iphone11ProMaxNineteenModelObj ?? this.iphone11ProMaxNineteenModelObj,
    );
  }
}
