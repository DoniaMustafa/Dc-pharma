// ignore_for_file: must_be_immutable

part of 'iphone_11_pro_max_sixtyfive_one_bloc.dart';

/// Represents the state of Iphone11ProMaxSixtyfiveOne in the application.
class Iphone11ProMaxSixtyfiveOneState extends Equatable {
  Iphone11ProMaxSixtyfiveOneState({this.iphone11ProMaxSixtyfiveOneModelObj});

  Iphone11ProMaxSixtyfiveOneModel? iphone11ProMaxSixtyfiveOneModelObj;

  @override
  List<Object?> get props => [
        iphone11ProMaxSixtyfiveOneModelObj,
      ];
  Iphone11ProMaxSixtyfiveOneState copyWith(
      {Iphone11ProMaxSixtyfiveOneModel? iphone11ProMaxSixtyfiveOneModelObj}) {
    return Iphone11ProMaxSixtyfiveOneState(
      iphone11ProMaxSixtyfiveOneModelObj: iphone11ProMaxSixtyfiveOneModelObj ??
          this.iphone11ProMaxSixtyfiveOneModelObj,
    );
  }
}
