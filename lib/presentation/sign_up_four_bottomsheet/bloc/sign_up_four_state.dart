// ignore_for_file: must_be_immutable

part of 'sign_up_four_bloc.dart';

/// Represents the state of SignUpFour in the application.
class SignUpFourState extends Equatable {
  SignUpFourState({this.signUpFourModelObj});

  SignUpFourModel? signUpFourModelObj;

  @override
  List<Object?> get props => [
        signUpFourModelObj,
      ];
  SignUpFourState copyWith({SignUpFourModel? signUpFourModelObj}) {
    return SignUpFourState(
      signUpFourModelObj: signUpFourModelObj ?? this.signUpFourModelObj,
    );
  }
}
