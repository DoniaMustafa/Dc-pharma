// ignore_for_file: must_be_immutable

part of 'sign_up_five_bloc.dart';

/// Represents the state of SignUpFive in the application.
class SignUpFiveState extends Equatable {
  SignUpFiveState({
    this.searchController,
    this.signUpFiveModelObj,
  });

  TextEditingController? searchController;

  SignUpFiveModel? signUpFiveModelObj;

  @override
  List<Object?> get props => [
        searchController,
        signUpFiveModelObj,
      ];
  SignUpFiveState copyWith({
    TextEditingController? searchController,
    SignUpFiveModel? signUpFiveModelObj,
  }) {
    return SignUpFiveState(
      searchController: searchController ?? this.searchController,
      signUpFiveModelObj: signUpFiveModelObj ?? this.signUpFiveModelObj,
    );
  }
}
