// ignore_for_file: must_be_immutable

part of 'profile_info_bloc.dart';

/// Represents the state of ProfileInfo in the application.
class ProfileInfoState extends Equatable {
  ProfileInfoState({
    this.pharmacyNameController,
    this.profileInfoModelObj,
  });

  TextEditingController? pharmacyNameController;

  ProfileInfoModel? profileInfoModelObj;

  @override
  List<Object?> get props => [
        pharmacyNameController,
        profileInfoModelObj,
      ];
  ProfileInfoState copyWith({
    TextEditingController? pharmacyNameController,
    ProfileInfoModel? profileInfoModelObj,
  }) {
    return ProfileInfoState(
      pharmacyNameController:
          pharmacyNameController ?? this.pharmacyNameController,
      profileInfoModelObj: profileInfoModelObj ?? this.profileInfoModelObj,
    );
  }
}
