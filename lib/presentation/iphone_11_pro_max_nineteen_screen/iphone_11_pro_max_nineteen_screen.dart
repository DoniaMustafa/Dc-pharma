import 'bloc/iphone_11_pro_max_nineteen_bloc.dart';
import 'models/iphone_11_pro_max_nineteen_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxNineteenScreen extends StatelessWidget {
  const Iphone11ProMaxNineteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxNineteenBloc>(
      create: (context) =>
          Iphone11ProMaxNineteenBloc(Iphone11ProMaxNineteenState(
        iphone11ProMaxNineteenModelObj: Iphone11ProMaxNineteenModel(),
      ))
            ..add(Iphone11ProMaxNineteenInitialEvent()),
      child: Iphone11ProMaxNineteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxNineteenBloc, Iphone11ProMaxNineteenState>(
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
                    ImageConstant.imgGroup13,
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
                            horizontal: 43.h,
                            vertical: 129.v,
                          ),
                          decoration: AppDecoration.gradientBlackToWhiteA,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
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
                              SizedBox(height: 69.v),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomOutlinedButton(
                                    height: 46.v,
                                    width: 137.h,
                                    text: "lbl_sign_up".tr,
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumOutfitPrimaryBold,
                                  ),
                                  CustomElevatedButton(
                                    height: 46.v,
                                    width: 137.h,
                                    text: "lbl_login".tr,
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryTL7,
                                    buttonTextStyle: CustomTextStyles
                                        .titleMediumOutfitWhiteA700Bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildNinetyColumn(context),
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
  Widget _buildNinetyColumn(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 163.v),
        padding: EdgeInsets.symmetric(
          horizontal: 52.h,
          vertical: 91.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup90,
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
