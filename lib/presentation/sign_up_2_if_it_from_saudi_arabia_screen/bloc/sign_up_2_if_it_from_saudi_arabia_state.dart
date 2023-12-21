// ignore_for_file: must_be_immutable

part of 'sign_up_2_if_it_from_saudi_arabia_bloc.dart';

/// Represents the state of SignUp2IfItFromSaudiArabia in the application.
class SignUp2IfItFromSaudiArabiaState extends Equatable {
  SignUp2IfItFromSaudiArabiaState({
    this.phoneController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.signUp2IfItFromSaudiArabiaModelObj,
  });

  TextEditingController? phoneController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUp2IfItFromSaudiArabiaModel? signUp2IfItFromSaudiArabiaModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        phoneController,
        emailController,
        passwordController,
        isShowPassword,
        signUp2IfItFromSaudiArabiaModelObj,
      ];
  SignUp2IfItFromSaudiArabiaState copyWith({
    TextEditingController? phoneController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    SignUp2IfItFromSaudiArabiaModel? signUp2IfItFromSaudiArabiaModelObj,
  }) {
    return SignUp2IfItFromSaudiArabiaState(
      phoneController: phoneController ?? this.phoneController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUp2IfItFromSaudiArabiaModelObj: signUp2IfItFromSaudiArabiaModelObj ??
          this.signUp2IfItFromSaudiArabiaModelObj,
    );
  }
}
