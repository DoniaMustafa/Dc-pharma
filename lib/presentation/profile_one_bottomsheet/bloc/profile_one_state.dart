// ignore_for_file: must_be_immutable

part of 'profile_one_bloc.dart';

/// Represents the state of ProfileOne in the application.
class ProfileOneState extends Equatable {
  ProfileOneState({
    this.languageController,
    this.languageController1,
    this.profileOneModelObj,
  });

  TextEditingController? languageController;

  TextEditingController? languageController1;

  ProfileOneModel? profileOneModelObj;

  @override
  List<Object?> get props => [
        languageController,
        languageController1,
        profileOneModelObj,
      ];
  ProfileOneState copyWith({
    TextEditingController? languageController,
    TextEditingController? languageController1,
    ProfileOneModel? profileOneModelObj,
  }) {
    return ProfileOneState(
      languageController: languageController ?? this.languageController,
      languageController1: languageController1 ?? this.languageController1,
      profileOneModelObj: profileOneModelObj ?? this.profileOneModelObj,
    );
  }
}
