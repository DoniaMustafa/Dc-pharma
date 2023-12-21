// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtyfour_bloc.dart';

/// Represents the state of Iphone11ProMaxSixtyfour in the application.
class Iphone11ProMaxSixtyfourState extends Equatable {
  Iphone11ProMaxSixtyfourState({this.iphone11ProMaxSixtyfourModelObj});

  Iphone11ProMaxSixtyfourModel? iphone11ProMaxSixtyfourModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxSixtyfourModelObj,
      ];
  Iphone11ProMaxSixtyfourState copyWith(
      {Iphone11ProMaxSixtyfourModel? iphone11ProMaxSixtyfourModelObj}) {
    return Iphone11ProMaxSixtyfourState(
      iphone11ProMaxSixtyfourModelObj: iphone11ProMaxSixtyfourModelObj ??
          this.iphone11ProMaxSixtyfourModelObj,
    );
  }
}
