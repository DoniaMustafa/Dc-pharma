// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_twelve_bloc.dart';

/// Represents the state of Iphone11ProMaxTwelve in the application.
class Iphone11ProMaxTwelveState extends Equatable {
  Iphone11ProMaxTwelveState({this.iphone11ProMaxTwelveModelObj});

  Iphone11ProMaxTwelveModel? iphone11ProMaxTwelveModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxTwelveModelObj,
      ];
  Iphone11ProMaxTwelveState copyWith(
      {Iphone11ProMaxTwelveModel? iphone11ProMaxTwelveModelObj}) {
    return Iphone11ProMaxTwelveState(
      iphone11ProMaxTwelveModelObj:
          iphone11ProMaxTwelveModelObj ?? this.iphone11ProMaxTwelveModelObj,
    );
  }
}
