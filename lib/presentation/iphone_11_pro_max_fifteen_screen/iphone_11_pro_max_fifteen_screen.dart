import '../iphone_11_pro_max_fifteen_screen/widgets/userprofile3_item_widget.dart';
import 'bloc/iphone_11_pro_max_fifteen_bloc.dart';
import 'models/iphone_11_pro_max_fifteen_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:drfarama/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxFifteenScreen extends StatelessWidget {
  const Iphone11ProMaxFifteenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxFifteenBloc>(
      create: (context) => Iphone11ProMaxFifteenBloc(Iphone11ProMaxFifteenState(
        iphone11ProMaxFifteenModelObj: Iphone11ProMaxFifteenModel(),
      ))
        ..add(Iphone11ProMaxFifteenInitialEvent()),
      child: Iphone11ProMaxFifteenScreen(),
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
              horizontal: 29.h,
              vertical: 15.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildUserProfile(context),
                SizedBox(height: 30.v),
                BlocBuilder<Iphone11ProMaxFifteenBloc,
                    Iphone11ProMaxFifteenState>(
                  builder: (context, state) {
                    return SizedBox(
                      height: 15.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: state.sliderIndex,
                        count: state.iphone11ProMaxFifteenModelObj
                                ?.userprofile3ItemList.length ??
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
                SizedBox(height: 61.v),
                _buildSignUp(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: BlocBuilder<Iphone11ProMaxFifteenBloc, Iphone11ProMaxFifteenState>(
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
            itemCount: state.iphone11ProMaxFifteenModelObj?.userprofile3ItemList
                    .length ??
                0,
            itemBuilder: (context, index, realIndex) {
              Userprofile3ItemModel model = state.iphone11ProMaxFifteenModelObj
                      ?.userprofile3ItemList[index] ??
                  Userprofile3ItemModel();
              return Userprofile3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomOutlinedButton(
            height: 54.v,
            text: "lbl_sign_up".tr,
            margin: EdgeInsets.only(right: 16.h),
            buttonTextStyle: CustomTextStyles.titleMediumOutfitPrimaryBold_1,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            height: 54.v,
            text: "lbl_login".tr,
            margin: EdgeInsets.only(left: 16.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL7,
            buttonTextStyle: CustomTextStyles.titleMediumOutfitWhiteA700,
          ),
        ),
      ],
    );
  }
}
