// ignore_for_file: must_be_immutable

part of 'sign_up_three_bloc.dart';

/// Represents the state of SignUpThree in the application.
class SignUpThreeState extends Equatable {
  SignUpThreeState({
    this.nameController,
    this.phoneController,
    this.yourRegionController,
    this.signUpThreeModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? phoneController;

  TextEditingController? yourRegionController;

  SignUpThreeModel? signUpThreeModelObj;

  @override
  List<Object?> get props => [
        nameController,
        phoneController,
        yourRegionController,
        signUpThreeModelObj,
      ];
  SignUpThreeState copyWith({
    TextEditingController? nameController,
    TextEditingController? phoneController,
    TextEditingController? yourRegionController,
    SignUpThreeModel? signUpThreeModelObj,
  }) {
    return SignUpThreeState(
      nameController: nameController ?? this.nameController,
      phoneController: phoneController ?? this.phoneController,
      yourRegionController: yourRegionController ?? this.yourRegionController,
      signUpThreeModelObj: signUpThreeModelObj ?? this.signUpThreeModelObj,
    );
  }
}
