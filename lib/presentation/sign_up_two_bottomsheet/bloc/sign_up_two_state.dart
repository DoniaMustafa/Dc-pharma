// ignore_for_file: must_be_immutable

part of 'sign_up_two_bloc.dart';

/// Represents the state of SignUpTwo in the application.
class SignUpTwoState extends Equatable {
  SignUpTwoState({this.signUpTwoModelObj});

  SignUpTwoModel? signUpTwoModelObj;

  @override
  List<Object?> get props => [
        signUpTwoModelObj,
      ];
  SignUpTwoState copyWith({SignUpTwoModel? signUpTwoModelObj}) {
    return SignUpTwoState(
      signUpTwoModelObj: signUpTwoModelObj ?? this.signUpTwoModelObj,
    );
  }
}
