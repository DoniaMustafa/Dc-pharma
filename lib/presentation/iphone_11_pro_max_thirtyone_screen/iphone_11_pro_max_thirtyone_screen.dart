import '../iphone_11_pro_max_thirtyone_screen/widgets/sliderwidget2_item_widget.dart';
import 'bloc/iphone_11_pro_max_thirtyone_bloc.dart';
import 'models/iphone_11_pro_max_thirtyone_model.dart';
import 'models/sliderwidget2_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxThirtyoneScreen extends StatelessWidget {
  const Iphone11ProMaxThirtyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxThirtyoneBloc>(
      create: (context) =>
          Iphone11ProMaxThirtyoneBloc(Iphone11ProMaxThirtyoneState(
        iphone11ProMaxThirtyoneModelObj: Iphone11ProMaxThirtyoneModel(),
      ))
            ..add(Iphone11ProMaxThirtyoneInitialEvent()),
      child: Iphone11ProMaxThirtyoneScreen(),
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
                SizedBox(height: 22.v),
                BlocBuilder<Iphone11ProMaxThirtyoneBloc,
                    Iphone11ProMaxThirtyoneState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: 15.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: state.sliderIndex,
                        count: state.iphone11ProMaxThirtyoneModelObj
                                ?.sliderwidget2ItemList.length ??
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
                SizedBox(height: 28.v),
                CustomElevatedButton(
                  height: 62.v,
                  text: "lbl_login".tr,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    right: 2.h,
                  ),
                  buttonTextStyle: CustomTextStyles.titleLargeOutfit_1,
                ),
                SizedBox(height: 26.v),
                CustomOutlinedButton(
                  text: "lbl_sign_up".tr,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    right: 2.h,
                  ),
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  buttonTextStyle: CustomTextStyles.titleLargeOutfitPrimary,
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
      child: BlocBuilder<Iphone11ProMaxThirtyoneBloc,
          Iphone11ProMaxThirtyoneState>(
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
            itemCount: state.iphone11ProMaxThirtyoneModelObj
                    ?.sliderwidget2ItemList.length ??
                0,
            itemBuilder: (context, index, realIndex) {
              Sliderwidget2ItemModel model = state
                      .iphone11ProMaxThirtyoneModelObj
                      ?.sliderwidget2ItemList[index] ??
                  Sliderwidget2ItemModel();
              return Sliderwidget2ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
