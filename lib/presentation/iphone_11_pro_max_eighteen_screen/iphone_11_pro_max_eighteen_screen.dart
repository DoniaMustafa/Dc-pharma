import 'bloc/iphone_11_pro_max_eighteen_bloc.dart';
import 'models/iphone_11_pro_max_eighteen_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxEighteenScreen extends StatelessWidget {
  const Iphone11ProMaxEighteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxEighteenBloc>(
      create: (context) =>
          Iphone11ProMaxEighteenBloc(Iphone11ProMaxEighteenState(
        iphone11ProMaxEighteenModelObj: Iphone11ProMaxEighteenModel(),
      ))
            ..add(Iphone11ProMaxEighteenInitialEvent()),
      child: Iphone11ProMaxEighteenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxEighteenBloc, Iphone11ProMaxEighteenState>(
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
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 129.v),
                          decoration: AppDecoration.gradientBlackToWhiteA,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: CustomOutlinedButton(
                                  height: 54.v,
                                  text: "lbl_sign_up".tr,
                                  margin: EdgeInsets.only(
                                    top: 511.v,
                                    right: 16.h,
                                  ),
                                  buttonTextStyle: CustomTextStyles
                                      .titleMediumOutfitPrimaryBold_1,
                                ),
                              ),
                              Expanded(
                                child: CustomElevatedButton(
                                  height: 54.v,
                                  text: "lbl_login".tr,
                                  margin: EdgeInsets.only(
                                    left: 16.h,
                                    top: 511.v,
                                  ),
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL7,
                                  buttonTextStyle: CustomTextStyles
                                      .titleMediumOutfitWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVector5Primary,
                        height: 569.v,
                        width: 414.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 57.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
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
                              SizedBox(height: 154.v),
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
            ),
          ),
        );
      },
    );
  }
}
