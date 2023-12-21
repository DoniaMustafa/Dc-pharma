import '../iphone_11_pro_max_twentyseven_screen/widgets/slidertitle_item_widget.dart';
import 'bloc/iphone_11_pro_max_twentyseven_bloc.dart';
import 'models/iphone_11_pro_max_twentyseven_model.dart';
import 'models/slidertitle_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxTwentysevenScreen extends StatelessWidget {
  const Iphone11ProMaxTwentysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwentysevenBloc>(
      create: (context) =>
          Iphone11ProMaxTwentysevenBloc(Iphone11ProMaxTwentysevenState(
        iphone11ProMaxTwentysevenModelObj: Iphone11ProMaxTwentysevenModel(),
      ))
            ..add(Iphone11ProMaxTwentysevenInitialEvent()),
      child: Iphone11ProMaxTwentysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

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
              image: fs.Svg(
                ImageConstant.imgIphone11ProMax,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 15.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildSliderTitle(context),
                SizedBox(height: 30.v),
                BlocBuilder<Iphone11ProMaxTwentysevenBloc,
                    Iphone11ProMaxTwentysevenState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: 15.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: state.sliderIndex,
                        count: state.iphone11ProMaxTwentysevenModelObj
                                ?.slidertitleItemList.length ??
                            0,
                        axisDirection: Axis.horizontal,
                        effect: ScrollingDotsEffect(
                          spacing: 3.11,
                          activeDotColor: appTheme.blueGray10002,
                          dotColor: appTheme.gray20099,
                          dotHeight: 15.v,
                          dotWidth: 16.h,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(height: 51.v),
                _buildSignUpRow(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 17.h,
      ),
      child: BlocBuilder<Iphone11ProMaxTwentysevenBloc,
          Iphone11ProMaxTwentysevenState>(
        builder: (context, state) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 518.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                state.sliderIndex = index;
              },
            ),
            itemCount: state.iphone11ProMaxTwentysevenModelObj
                    ?.slidertitleItemList.length ??
                0,
            itemBuilder: (context, index, realIndex) {
              SlidertitleItemModel model = state
                      .iphone11ProMaxTwentysevenModelObj
                      ?.slidertitleItemList[index] ??
                  SlidertitleItemModel();
              return SlidertitleItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
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
    );
  }
}
