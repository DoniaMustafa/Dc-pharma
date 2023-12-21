// ignore_for_file: must_be_immutable

part of 'profile_info_two_bloc.dart';

/// Represents the state of ProfileInfoTwo in the application.
class ProfileInfoTwoState extends Equatable {
  ProfileInfoTwoState({
    this.passwordFieldController,
    this.newPasswordFieldController,
    this.confirmPasswordFieldController,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.isShowPassword2 = true,
    this.profileInfoTwoModelObj,
  });

  TextEditingController? passwordFieldController;

  TextEditingController? newPasswordFieldController;

  TextEditingController? confirmPasswordFieldController;

  ProfileInfoTwoModel? profileInfoTwoModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool isShowPassword2;

  @override
  List<Object?> get props => [
        passwordFieldController,
        newPasswordFieldController,
        confirmPasswordFieldController,
        isShowPassword,
        isShowPassword1,
        isShowPassword2,
        profileInfoTwoModelObj,
      ];
  ProfileInfoTwoState copyWith({
    TextEditingController? passwordFieldController,
    TextEditingController? newPasswordFieldController,
    TextEditingController? confirmPasswordFieldController,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? isShowPassword2,
    ProfileInfoTwoModel? profileInfoTwoModelObj,
  }) {
    return ProfileInfoTwoState(
      passwordFieldController:
          passwordFieldController ?? this.passwordFieldController,
      newPasswordFieldController:
          newPasswordFieldController ?? this.newPasswordFieldController,
      confirmPasswordFieldController:
          confirmPasswordFieldController ?? this.confirmPasswordFieldController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      isShowPassword2: isShowPassword2 ?? this.isShowPassword2,
      profileInfoTwoModelObj:
          profileInfoTwoModelObj ?? this.profileInfoTwoModelObj,
    );
  }
}
