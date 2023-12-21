import 'bloc/iphone_11_pro_max_twentyfive_bloc.dart';
import 'models/iphone_11_pro_max_twentyfive_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxTwentyfiveScreen extends StatelessWidget {
  const Iphone11ProMaxTwentyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentyfiveBloc>(
      create: (context) =>
          Iphone11ProMaxTwentyfiveBloc(Iphone11ProMaxTwentyfiveState(
        iphone11ProMaxTwentyfiveModelObj: Iphone11ProMaxTwentyfiveModel(),
      ))
            ..add(Iphone11ProMaxTwentyfiveInitialEvent()),
      child: Iphone11ProMaxTwentyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTwentyfiveBloc,
        Iphone11ProMaxTwentyfiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 818.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup13,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 17.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.gradientBlackToWhiteA,
                        child: Column(
                          children: [
                            Opacity(
                              opacity: 0.9,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgMaskGroup,
                                height: 58.adaptSize,
                                width: 58.adaptSize,
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Spacer(),
                            CustomElevatedButton(
                              height: 62.v,
                              text: "lbl_login".tr,
                              margin: EdgeInsets.only(
                                left: 22.h,
                                right: 15.h,
                              ),
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeOutfit_1,
                            ),
                            SizedBox(height: 26.v),
                            CustomOutlinedButton(
                              text: "lbl_sign_up".tr,
                              margin: EdgeInsets.only(
                                left: 22.h,
                                right: 15.h,
                              ),
                              buttonStyle: CustomButtonStyles.outlineWhiteA,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeOutfit_1,
                            ),
                            SizedBox(height: 81.v),
                          ],
                        ),
                      ),
                    ),
                  ),
                  _buildUserProfile(context),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 15.v,
                      margin: EdgeInsets.only(bottom: 269.v),
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 3,
                        effect: ScrollingDotsEffect(
                          spacing: 3.11,
                          activeDotColor: theme.colorScheme.secondaryContainer
                              .withOpacity(0.8),
                          dotColor: appTheme.gray20099,
                          dotHeight: 15.v,
                          dotWidth: 16.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 149.v),
        padding: EdgeInsets.symmetric(
          horizontal: 52.h,
          vertical: 91.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup20,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 60.v),
            Text(
              "msg_all_you_have_to".tr,
              style: CustomTextStyles.headlineSmallOutfit,
            ),
            SizedBox(height: 20.v),
            Container(
              width: 296.h,
              margin: EdgeInsets.only(right: 13.h),
              child: Text(
                "msg_whatever_your_needs".tr,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumOutfitWhiteA700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
