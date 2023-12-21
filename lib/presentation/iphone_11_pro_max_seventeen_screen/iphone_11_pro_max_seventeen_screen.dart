import '../iphone_11_pro_max_seventeen_screen/widgets/sliderwidget_item_widget.dart';
import 'bloc/iphone_11_pro_max_seventeen_bloc.dart';
import 'models/iphone_11_pro_max_seventeen_model.dart';
import 'models/sliderwidget_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxSeventeenScreen extends StatelessWidget {
  const Iphone11ProMaxSeventeenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSeventeenBloc>(
      create: (context) =>
          Iphone11ProMaxSeventeenBloc(Iphone11ProMaxSeventeenState(
        iphone11ProMaxSeventeenModelObj: Iphone11ProMaxSeventeenModel(),
      ))
            ..add(Iphone11ProMaxSeventeenInitialEvent()),
      child: Iphone11ProMaxSeventeenScreen(),
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
              horizontal: 30.h,
              vertical: 15.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildSliderWidget(context),
                SizedBox(height: 30.v),
                BlocBuilder<Iphone11ProMaxSeventeenBloc,
                    Iphone11ProMaxSeventeenState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: 15.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: state.sliderIndex,
                        count: state.iphone11ProMaxSeventeenModelObj
                                ?.sliderwidgetItemList.length ??
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
                SizedBox(height: 69.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOutlinedButton(
                        height: 46.v,
                        width: 137.h,
                        text: "lbl_sign_up".tr,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumOutfitPrimaryBold,
                      ),
                      CustomElevatedButton(
                        height: 46.v,
                        width: 137.h,
                        text: "lbl_login".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumOutfitWhiteA700Bold,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: BlocBuilder<Iphone11ProMaxSeventeenBloc,
          Iphone11ProMaxSeventeenState>(
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
            itemCount: state.iphone11ProMaxSeventeenModelObj
                    ?.sliderwidgetItemList.length ??
                0,
            itemBuilder: (context, index, realIndex) {
              SliderwidgetItemModel model = state
                      .iphone11ProMaxSeventeenModelObj
                      ?.sliderwidgetItemList[index] ??
                  SliderwidgetItemModel();
              return SliderwidgetItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
