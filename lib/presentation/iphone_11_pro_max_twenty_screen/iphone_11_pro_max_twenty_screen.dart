import 'bloc/iphone_11_pro_max_twenty_bloc.dart';
import 'models/iphone_11_pro_max_twenty_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxTwentyScreen extends StatelessWidget {
  const Iphone11ProMaxTwentyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentyBloc>(
      create: (context) => Iphone11ProMaxTwentyBloc(Iphone11ProMaxTwentyState(
        iphone11ProMaxTwentyModelObj: Iphone11ProMaxTwentyModel(),
      ))
        ..add(Iphone11ProMaxTwentyInitialEvent()),
      child: Iphone11ProMaxTwentyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTwentyBloc, Iphone11ProMaxTwentyState>(
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
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 43.h,
                            vertical: 129.v,
                          ),
                          decoration: AppDecoration.gradientBlackToWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomOutlinedButton(
                                height: 46.v,
                                width: 137.h,
                                text: "lbl_sign_up".tr,
                                margin: EdgeInsets.only(top: 519.v),
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumOutfitPrimaryBold,
                              ),
                              CustomElevatedButton(
                                height: 46.v,
                                width: 137.h,
                                text: "lbl_login".tr,
                                margin: EdgeInsets.only(top: 519.v),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                                buttonTextStyle: CustomTextStyles
                                    .titleMediumOutfitWhiteA700Bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 5.v,
                            bottom: 139.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 51.h,
                            vertical: 105.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup102,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Spacer(
                                flex: 65,
                              ),
                              Text(
                                "msg_what_are_you_waiting".tr,
                                style: CustomTextStyles.headlineSmallOutfit,
                              ),
                              SizedBox(height: 18.v),
                              Container(
                                width: 299.h,
                                margin: EdgeInsets.only(right: 11.h),
                                child: Text(
                                  "msg_join_us_in_the_doctor".tr,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles
                                      .bodyMediumOutfitWhiteA700,
                                ),
                              ),
                              Spacer(
                                flex: 34,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
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
