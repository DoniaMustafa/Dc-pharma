import 'bloc/category_info_four_bloc.dart';
import 'models/category_info_four_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:drfarama/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class CategoryInfoFourScreen extends StatelessWidget {
  const CategoryInfoFourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryInfoFourBloc>(
      create: (context) => CategoryInfoFourBloc(CategoryInfoFourState(
        categoryInfoFourModelObj: CategoryInfoFourModel(),
      ))
        ..add(CategoryInfoFourInitialEvent()),
      child: CategoryInfoFourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildCashBack(context),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 23.h,
                    vertical: 28.v,
                  ),
                  child: Column(
                    children: [
                      _buildPoint(context),
                      Spacer(
                        flex: 39,
                      ),
                      Container(
                        width: 330.h,
                        margin: EdgeInsets.only(
                          left: 15.h,
                          right: 23.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 22.h,
                          vertical: 20.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: fs.Svg(
                              ImageConstant.imgGroup675,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUserGray10003,
                              height: 41.adaptSize,
                              width: 41.adaptSize,
                              margin: EdgeInsets.only(bottom: 124.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 5.v,
                                right: 2.h,
                                bottom: 4.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgSettingsGray10003,
                                        height: 9.v,
                                        width: 46.h,
                                      ),
                                      SizedBox(height: 5.v),
                                      SizedBox(
                                        height: 10.v,
                                        width: 46.h,
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant.imgG818,
                                              height: 10.v,
                                              width: 4.h,
                                              alignment: Alignment.centerLeft,
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSettingsGray100037x12,
                                              height: 7.v,
                                              width: 12.h,
                                              alignment: Alignment.bottomLeft,
                                              margin:
                                                  EdgeInsets.only(left: 3.h),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgThumbsUpGray10003,
                                              height: 10.v,
                                              width: 6.h,
                                              alignment: Alignment.centerLeft,
                                              margin:
                                                  EdgeInsets.only(left: 14.h),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgSettingsGray100037x12,
                                              height: 7.v,
                                              width: 12.h,
                                              alignment: Alignment.bottomRight,
                                              margin:
                                                  EdgeInsets.only(right: 14.h),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgThumbsUpGray100037x15,
                                              height: 7.v,
                                              width: 15.h,
                                              alignment: Alignment.bottomRight,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 23.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 23.h),
                                    child: Text(
                                      "lbl_your_balance".tr,
                                      style: CustomTextStyles
                                          .labelLargePoppinsGray10003,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 35.h),
                                    child: Text(
                                      "lbl_237_00".tr,
                                      style: CustomTextStyles
                                          .titleLargePoppinsGray10003,
                                    ),
                                  ),
                                  SizedBox(height: 26.v),
                                  Container(
                                    margin: EdgeInsets.only(right: 69.h),
                                    decoration:
                                        AppDecoration.outlineGray50077.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 31.h,
                                        vertical: 5.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray10003.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder7,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 1.v),
                                          Text(
                                            "lbl_withdrawal".tr,
                                            style: CustomTextStyles
                                                .labelLargePoppinsBluegray500,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 60,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCashBack(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 28.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup49,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 44.v),
          CustomAppBar(
            height: 27.v,
            leadingWidth: 40.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgGroup1,
              margin: EdgeInsets.only(
                left: 35.h,
                top: 10.v,
                bottom: 5.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitleTwo(
              text: "lbl_cash_back".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPoint(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 1.h,
            right: 8.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 61.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_20".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.v,
                            bottom: 6.v,
                          ),
                          child: Text(
                            "lbl_egp".tr.toUpperCase(),
                            style: CustomTextStyles.bodySmallPoppins,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "lbl_1000".tr,
                      style: CustomTextStyles.labelLargePoppinsRed700,
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 46,
              ),
              Column(
                children: [
                  Text(
                    "lbl_100".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  Text(
                    "lbl_2500".tr,
                    style: CustomTextStyles.labelLargePoppinsRed700,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 2.h,
                  top: 20.v,
                  bottom: 23.v,
                ),
                child: Text(
                  "lbl_egp".tr.toUpperCase(),
                  style: CustomTextStyles.bodySmallPoppins,
                ),
              ),
              Spacer(
                flex: 53,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 81.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_200".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 20.v,
                            bottom: 6.v,
                          ),
                          child: Text(
                            "lbl_egp".tr.toUpperCase(),
                            style: CustomTextStyles.bodySmallPoppins,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 13.h),
                    child: Text(
                      "lbl_3000".tr,
                      style: CustomTextStyles.labelLargePoppinsRed700,
                    ),
                  ),
                ],
              ),
              Container(
                height: 61.v,
                width: 30.h,
                margin: EdgeInsets.only(left: 28.h),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl_5000".tr,
                        style: CustomTextStyles.labelLargePoppinsRed700,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "lbl3".tr,
                        style: theme.textTheme.headlineLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.v),
        Container(
          width: 368.h,
          decoration: AppDecoration.fillGray10002.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: BlocSelector<CategoryInfoFourBloc, CategoryInfoFourState,
              String?>(
            selector: (state) => state.radioGroup,
            builder: (context, radioGroup) {
              return CustomRadioButton(
                width: 179.h,
                text: "lbl_2700_point".tr,
                value: "lbl_2700_point".tr ?? "",
                groupValue: radioGroup,
                padding: EdgeInsets.symmetric(
                  horizontal: 26.h,
                  vertical: 1.v,
                ),
                isRightCheck: true,
                onChange: (value) {
                  context
                      .read<CategoryInfoFourBloc>()
                      .add(ChangeRadioButtonEvent(value: value));
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
