// ignore_for_file: must_be_immutable

part of 'profile_info_one_bloc.dart';

/// Represents the state of ProfileInfoOne in the application.
class ProfileInfoOneState extends Equatable {
  ProfileInfoOneState({
    this.hassnaaAdelController,
    this.emailController,
    this.phoneNumberController,
    this.selectedCountry,
    this.profileInfoOneModelObj,
  });

  TextEditingController? hassnaaAdelController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  ProfileInfoOneModel? profileInfoOneModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        hassnaaAdelController,
        emailController,
        phoneNumberController,
        selectedCountry,
        profileInfoOneModelObj,
      ];
  ProfileInfoOneState copyWith({
    TextEditingController? hassnaaAdelController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    ProfileInfoOneModel? profileInfoOneModelObj,
  }) {
    return ProfileInfoOneState(
      hassnaaAdelController:
          hassnaaAdelController ?? this.hassnaaAdelController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      profileInfoOneModelObj:
          profileInfoOneModelObj ?? this.profileInfoOneModelObj,
    );
  }
}
