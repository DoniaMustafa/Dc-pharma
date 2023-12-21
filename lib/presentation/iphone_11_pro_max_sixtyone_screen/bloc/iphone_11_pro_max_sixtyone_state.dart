// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtyone_bloc.dart';

/// Represents the state of Iphone11ProMaxSixtyone in the application.
class Iphone11ProMaxSixtyoneState extends Equatable {
  Iphone11ProMaxSixtyoneState({this.iphone11ProMaxSixtyoneModelObj});

  Iphone11ProMaxSixtyoneModel? iphone11ProMaxSixtyoneModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxSixtyoneModelObj,
      ];
  Iphone11ProMaxSixtyoneState copyWith(
      {Iphone11ProMaxSixtyoneModel? iphone11ProMaxSixtyoneModelObj}) {
    return Iphone11ProMaxSixtyoneState(
      iphone11ProMaxSixtyoneModelObj:
          iphone11ProMaxSixtyoneModelObj ?? this.iphone11ProMaxSixtyoneModelObj,
    );
  }
}
