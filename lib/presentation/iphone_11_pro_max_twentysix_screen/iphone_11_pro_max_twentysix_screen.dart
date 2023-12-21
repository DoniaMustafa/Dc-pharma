import 'bloc/iphone_11_pro_max_twentysix_bloc.dart';
import 'models/iphone_11_pro_max_twentysix_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxTwentysixScreen extends StatelessWidget {
  const Iphone11ProMaxTwentysixScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentysixBloc>(
      create: (context) =>
          Iphone11ProMaxTwentysixBloc(Iphone11ProMaxTwentysixState(
        iphone11ProMaxTwentysixModelObj: Iphone11ProMaxTwentysixModel(),
      ))
            ..add(Iphone11ProMaxTwentysixInitialEvent()),
      child: Iphone11ProMaxTwentysixScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTwentysixBloc,
        Iphone11ProMaxTwentysixState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgIphone11ProMax1,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: SizedBox(
                  height: 823.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 823.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.5, 0),
                              end: Alignment(0.5, 1),
                              colors: [
                                appTheme.black90001,
                                appTheme.gray800C5,
                                appTheme.whiteA700.withOpacity(0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 735.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVector5,
                                height: 663.v,
                                width: 414.h,
                                alignment: Alignment.topCenter,
                              ),
                              _buildAppBar(context),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 39.h,
                                    right: 32.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 13.h),
                                        child: Text(
                                          "msg_what_are_you_waiting".tr,
                                          style: CustomTextStyles
                                              .headlineSmallOutfit,
                                        ),
                                      ),
                                      SizedBox(height: 18.v),
                                      Container(
                                        width: 299.h,
                                        margin: EdgeInsets.only(
                                          left: 12.h,
                                          right: 31.h,
                                        ),
                                        child: Text(
                                          "msg_join_us_in_the_doctor".tr,
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: CustomTextStyles
                                              .bodyMediumOutfitWhiteA700,
                                        ),
                                      ),
                                      SizedBox(height: 103.v),
                                      Container(
                                        height: 15.v,
                                        margin: EdgeInsets.only(left: 137.h),
                                        child: AnimatedSmoothIndicator(
                                          activeIndex: 0,
                                          count: 3,
                                          effect: ScrollingDotsEffect(
                                            spacing: 3.11,
                                            activeDotColor: theme
                                                .colorScheme.secondaryContainer
                                                .withOpacity(0.8),
                                            dotColor: appTheme.gray20099,
                                            dotHeight: 15.v,
                                            dotWidth: 16.h,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 36.v),
                                      CustomElevatedButton(
                                        height: 62.v,
                                        text: "lbl_login".tr,
                                        buttonTextStyle:
                                            CustomTextStyles.titleLargeOutfit_1,
                                      ),
                                      SizedBox(height: 26.v),
                                      CustomOutlinedButton(
                                        text: "lbl_sign_up".tr,
                                        buttonStyle:
                                            CustomButtonStyles.outlineWhiteA,
                                        buttonTextStyle:
                                            CustomTextStyles.titleLargeOutfit_1,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 59.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMaskGroup,
        margin: EdgeInsets.only(
          left: 17.h,
          right: 339.h,
        ),
      ),
    );
  }
}
