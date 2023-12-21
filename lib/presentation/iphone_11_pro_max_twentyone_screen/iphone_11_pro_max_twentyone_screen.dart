import 'bloc/iphone_11_pro_max_twentyone_bloc.dart';
import 'models/iphone_11_pro_max_twentyone_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxTwentyoneScreen extends StatelessWidget {
  const Iphone11ProMaxTwentyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentyoneBloc>(
      create: (context) =>
          Iphone11ProMaxTwentyoneBloc(Iphone11ProMaxTwentyoneState(
        iphone11ProMaxTwentyoneModelObj: Iphone11ProMaxTwentyoneModel(),
      ))
            ..add(Iphone11ProMaxTwentyoneInitialEvent()),
      child: Iphone11ProMaxTwentyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTwentyoneBloc,
        Iphone11ProMaxTwentyoneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 818.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 128.v),
                      decoration: AppDecoration.gradientBlackToWhiteA,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: CustomOutlinedButton(
                              height: 65.v,
                              text: "lbl_sign_up".tr,
                              margin: EdgeInsets.only(
                                top: 502.v,
                                right: 13.h,
                              ),
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeOutfitPrimary20,
                            ),
                          ),
                          Expanded(
                            child: CustomElevatedButton(
                              height: 65.v,
                              text: "lbl_login".tr,
                              margin: EdgeInsets.only(
                                left: 13.h,
                                top: 502.v,
                              ),
                              buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeOutfit,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 122.v),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgIphone11ProMax818x414,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 4.v),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 56.h,
                                vertical: 134.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgVector5Primary,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 26.v),
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
                                        activeDotColor: appTheme.blueGray10002,
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
