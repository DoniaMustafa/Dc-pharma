import 'bloc/sign_up_four_bloc.dart';
import 'models/sign_up_four_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpFourBottomsheet extends StatelessWidget {
  const SignUpFourBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpFourBloc>(
      create: (context) => SignUpFourBloc(SignUpFourState(
        signUpFourModelObj: SignUpFourModel(),
      ))
        ..add(SignUpFourInitialEvent()),
      child: SignUpFourBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 22.h,
          vertical: 24.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 7.v,
              width: 114.h,
              decoration: BoxDecoration(
                color: appTheme.gray5005e,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              "lbl_attach_a_file".tr,
              style: CustomTextStyles.titleSmallPoppinsBlack90001_1,
            ),
            SizedBox(height: 10.v),
            Text(
              "msg_please_upload_your".tr,
              style: CustomTextStyles.bodySmallPoppinsBlack9000112,
            ),
            SizedBox(height: 17.v),
            _buildAiArtificialRow(context),
            SizedBox(height: 17.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAiArtificialRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 14.h),
              padding: EdgeInsets.symmetric(
                horizontal: 43.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineGrayF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img2890580AiArtificial1,
                    height: 49.adaptSize,
                    width: 49.adaptSize,
                  ),
                  SizedBox(height: 14.v),
                  Text(
                    "lbl_from_drive".tr,
                    style: CustomTextStyles.titleSmallAlmaraiBlack90001,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 14.h),
              padding: EdgeInsets.symmetric(
                horizontal: 38.h,
                vertical: 12.v,
              ),
              decoration: AppDecoration.outlinePrimary1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "lbl_your_files".tr,
                      style: CustomTextStyles.titleSmallAlmaraiBlack90001,
                    ),
                  ),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
