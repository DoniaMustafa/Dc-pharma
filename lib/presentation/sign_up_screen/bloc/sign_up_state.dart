// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.
class SignUpState extends Equatable {
  SignUpState({
    this.countryController,
    this.phoneController,
    this.emailController,
    this.passwordController,
    this.confirmpasswordController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.signUpModelObj,
  });

  TextEditingController? countryController;

  TextEditingController? phoneController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  TextEditingController? confirmpasswordController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        countryController,
        phoneController,
        emailController,
        passwordController,
        confirmpasswordController,
        isShowPassword,
        isShowPassword1,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? countryController,
    TextEditingController? phoneController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? confirmpasswordController,
    bool? isShowPassword,
    bool? isShowPassword1,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      countryController: countryController ?? this.countryController,
      phoneController: phoneController ?? this.phoneController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      confirmpasswordController:
          confirmpasswordController ?? this.confirmpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
