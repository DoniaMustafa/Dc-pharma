import 'bloc/iphone_11_pro_max_twentyfour_bloc.dart';
import 'models/iphone_11_pro_max_twentyfour_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxTwentyfourScreen extends StatelessWidget {
  const Iphone11ProMaxTwentyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentyfourBloc>(
      create: (context) =>
          Iphone11ProMaxTwentyfourBloc(Iphone11ProMaxTwentyfourState(
        iphone11ProMaxTwentyfourModelObj: Iphone11ProMaxTwentyfourModel(),
      ))
            ..add(Iphone11ProMaxTwentyfourInitialEvent()),
      child: Iphone11ProMaxTwentyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTwentyfourBloc,
        Iphone11ProMaxTwentyfourState>(
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
                    ImageConstant.imgIphone11ProMax818x414,
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
                          padding: EdgeInsets.symmetric(
                            horizontal: 28.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.gradientBlackToWhiteA,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Opacity(
                                opacity: 0.8,
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
                                  left: 11.h,
                                  right: 4.h,
                                ),
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeOutfit_1,
                              ),
                              SizedBox(height: 26.v),
                              CustomOutlinedButton(
                                text: "lbl_sign_up".tr,
                                margin: EdgeInsets.only(
                                  left: 11.h,
                                  right: 4.h,
                                ),
                                buttonStyle: CustomButtonStyles.outlineWhiteA,
                                buttonTextStyle:
                                    CustomTextStyles.titleLargeOutfit_1,
                              ),
                              SizedBox(height: 86.v),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 122.v,
                            bottom: 158.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 56.h,
                            vertical: 116.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup16,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 45.v),
                              Text(
                                "msg_dr_pharma_best".tr,
                                style: CustomTextStyles.headlineSmallOutfit,
                              ),
                              SizedBox(height: 15.v),
                              SizedBox(
                                width: 300.h,
                                child: Text(
                                  "msg_at_doctor_pharma".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .bodyMediumOutfitWhiteA700,
                                ),
                              ),
                              Spacer(),
                              SizedBox(
                                height: 15.v,
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
}
