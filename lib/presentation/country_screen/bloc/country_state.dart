// ignore_for_file: must_be_immutable

part of 'country_bloc.dart';

/// Represents the state of Country in the application.
class CountryState extends Equatable {
  CountryState({
    this.phoneEditTextController,
    this.emailEditTextController,
    this.passwordEditTextController,
    this.confirmpasswordEditTextController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.countryModelObj,
  });

  TextEditingController? phoneEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? passwordEditTextController;

  TextEditingController? confirmpasswordEditTextController;

  CountryModel? countryModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        phoneEditTextController,
        emailEditTextController,
        passwordEditTextController,
        confirmpasswordEditTextController,
        isShowPassword,
        isShowPassword1,
        countryModelObj,
      ];
  CountryState copyWith({
    TextEditingController? phoneEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? passwordEditTextController,
    TextEditingController? confirmpasswordEditTextController,
    bool? isShowPassword,
    bool? isShowPassword1,
    CountryModel? countryModelObj,
  }) {
    return CountryState(
      phoneEditTextController:
          phoneEditTextController ?? this.phoneEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      confirmpasswordEditTextController: confirmpasswordEditTextController ??
          this.confirmpasswordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      countryModelObj: countryModelObj ?? this.countryModelObj,
    );
  }
}
