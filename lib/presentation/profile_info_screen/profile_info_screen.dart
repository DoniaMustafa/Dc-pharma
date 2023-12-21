import 'bloc/profile_info_bloc.dart';
import 'models/profile_info_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:drfarama/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileInfoScreen extends StatelessWidget {
  const ProfileInfoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileInfoBloc>(
      create: (context) => ProfileInfoBloc(ProfileInfoState(
        profileInfoModelObj: ProfileInfoModel(),
      ))
        ..add(ProfileInfoInitialEvent()),
      child: ProfileInfoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 37.v,
          ),
          child: Column(
            children: [
              _buildPharmacyName(context),
              SizedBox(height: 30.v),
              _buildPharmacyLicense(context),
              Spacer(),
              SizedBox(height: 46.v),
              _buildSaveChange(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup1Black90001,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 20.v,
          bottom: 24.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_pharmacy_info".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildPharmacyName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Column(
        children: [
          BlocSelector<ProfileInfoBloc, ProfileInfoState,
              TextEditingController?>(
            selector: (state) => state.pharmacyNameController,
            builder: (context, pharmacyNameController) {
              return CustomTextFormField(
                controller: pharmacyNameController,
                hintText: "lbl_az_pharmacy2".tr,
                textInputAction: TextInputAction.done,
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(19.h, 15.v, 17.h, 17.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.img3678407buildinghospitalicon1,
                    height: 26.adaptSize,
                    width: 26.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 58.v,
                ),
              );
            },
          ),
          SizedBox(height: 31.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 15.v,
            ),
            decoration: AppDecoration.outlineBlueGrayF.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant
                      .img1564515calldevicemobilephonesmartphoneicon1,
                  height: 23.v,
                  width: 24.h,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 18.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  child: Text(
                    "lbl_1222222222".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 65.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_203".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgTelevisionBlueGray50,
                        height: 25.adaptSize,
                        width: 25.adaptSize,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 38.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 17.v,
            ),
            decoration: AppDecoration.outlineBlueGrayF.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img8665619MapLocationIcon,
                  height: 20.v,
                  width: 22.h,
                  margin: EdgeInsets.only(top: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 23.h,
                    top: 1.v,
                  ),
                  child: Text(
                    "lbl_pharmacy_region".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray500,
                  height: 11.v,
                  width: 5.h,
                  margin: EdgeInsets.only(
                    top: 5.v,
                    right: 5.h,
                    bottom: 6.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPharmacyLicense(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Opacity(
            opacity: 0.8,
            child: Text(
              "msg_pharmacy_license".tr,
              style: CustomTextStyles.titleSmallPoppinsBlack90001Medium,
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(right: 84.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle28,
                  height: 108.v,
                  width: 124.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: DottedBorder(
                    color: theme.colorScheme.primary,
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    radius: Radius.circular(10),
                    borderType: BorderType.RRect,
                    dashPattern: [
                      8,
                      8,
                    ],
                    child: Container(
                      padding: EdgeInsets.all(24.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup18401,
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            alignment: Alignment.center,
                          ),
                          SizedBox(height: 3.v),
                          Text(
                            "lbl_attach_a_file".tr,
                            style: CustomTextStyles.bodySmallPoppinsBluegray300,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveChange(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_save_change".tr,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          CustomIconButton(
            height: 55.adaptSize,
            width: 55.adaptSize,
            padding: EdgeInsets.all(18.h),
            decoration: IconButtonStyleHelper.outlinePrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeftPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
