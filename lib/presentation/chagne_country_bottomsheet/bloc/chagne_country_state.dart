// ignore_for_file: must_be_immutable

part of 'chagne_country_bloc.dart';

/// Represents the state of ChagneCountry in the application.
class ChagneCountryState extends Equatable {
  ChagneCountryState({this.chagneCountryModelObj});

  ChagneCountryModel? chagneCountryModelObj;

  @override
  List<Object?> get props => [
        chagneCountryModelObj,
      ];
  ChagneCountryState copyWith({ChagneCountryModel? chagneCountryModelObj}) {
    return ChagneCountryState(
      chagneCountryModelObj:
          chagneCountryModelObj ?? this.chagneCountryModelObj,
    );
  }
}
