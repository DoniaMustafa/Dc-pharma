import 'bloc/iphone_11_pro_max_twentythree_bloc.dart';
import 'models/iphone_11_pro_max_twentythree_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxTwentythreeScreen extends StatelessWidget {
  const Iphone11ProMaxTwentythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentythreeBloc>(
      create: (context) =>
          Iphone11ProMaxTwentythreeBloc(Iphone11ProMaxTwentythreeState(
        iphone11ProMaxTwentythreeModelObj: Iphone11ProMaxTwentythreeModel(),
      ))
            ..add(Iphone11ProMaxTwentythreeInitialEvent()),
      child: Iphone11ProMaxTwentythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTwentythreeBloc,
        Iphone11ProMaxTwentythreeState>(
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
                        child: Container(
                          height: 690.v,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(top: 5.v),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgGroup102,
                                height: 678.v,
                                width: 414.h,
                                alignment: Alignment.center,
                              ),
                              _buildSignupSection(context),
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
  Widget _buildSignupSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "msg_what_are_you_waiting".tr,
              style: CustomTextStyles.headlineSmallOutfit,
            ),
            SizedBox(height: 18.v),
            Container(
              width: 299.h,
              margin: EdgeInsets.only(
                left: 32.h,
                right: 43.h,
              ),
              child: Text(
                "msg_join_us_in_the_doctor".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumOutfitWhiteA700,
              ),
            ),
            SizedBox(height: 112.v),
            SizedBox(
              height: 15.v,
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: 3.11,
                  activeDotColor: appTheme.blueGray10002,
                  dotColor: appTheme.gray20099,
                  dotHeight: 15.v,
                  dotWidth: 16.h,
                ),
              ),
            ),
            SizedBox(height: 51.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomOutlinedButton(
                    height: 65.v,
                    text: "lbl_sign_up".tr,
                    margin: EdgeInsets.only(right: 13.h),
                    buttonTextStyle: CustomTextStyles.titleLargeOutfitPrimary20,
                  ),
                ),
                Expanded(
                  child: CustomElevatedButton(
                    height: 65.v,
                    text: "lbl_login".tr,
                    margin: EdgeInsets.only(left: 13.h),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                    buttonTextStyle: CustomTextStyles.titleLargeOutfit,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
