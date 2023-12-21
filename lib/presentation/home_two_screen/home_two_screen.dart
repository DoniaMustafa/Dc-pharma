import '../home_two_screen/widgets/merkcomponent1_item_widget.dart';
import '../home_two_screen/widgets/productcard8_item_widget.dart';
import '../home_two_screen/widgets/slider_item_widget.dart';
import 'bloc/home_two_bloc.dart';
import 'models/home_two_model.dart';
import 'models/merkcomponent1_item_model.dart';
import 'models/productcard8_item_model.dart';
import 'models/slider_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_circleimage_one.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:drfarama/widgets/app_bar/appbar_trailing_image.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:drfarama/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeTwoScreen extends StatelessWidget {
  HomeTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeTwoBloc>(
      create: (context) => HomeTwoBloc(HomeTwoState(
        homeTwoModelObj: HomeTwoModel(),
      ))
        ..add(HomeTwoInitialEvent()),
      child: HomeTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 4.v),
          child: Column(
            children: [
              SizedBox(height: 35.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildSlider(context),
                        SizedBox(height: 37.v),
                        _buildCategories(context),
                        SizedBox(height: 43.v),
                        _buildBestOffers(context),
                        SizedBox(height: 13.v),
                        _buildProductCard(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 68.h,
      leading: AppbarLeadingCircleimageOne(
        imagePath: ImageConstant.imgRectangle1862340x40,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 6.v,
          bottom: 9.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Column(
          children: [
            AppbarSubtitleFour(
              text: "msg_current_location".tr,
            ),
            AppbarSubtitleThree(
              text: "lbl_egypt2".tr,
              margin: EdgeInsets.only(
                left: 4.h,
                right: 72.h,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastRed700,
          margin: EdgeInsets.fromLTRB(19.h, 15.v, 10.h, 9.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrastRed70039x43,
          margin: EdgeInsets.only(
            left: 9.h,
            top: 6.v,
            right: 29.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return BlocBuilder<HomeTwoBloc, HomeTwoState>(
      builder: (context, state) {
        return CarouselSlider.builder(
          options: CarouselOptions(
            height: 200.v,
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
          itemCount: state.homeTwoModelObj?.sliderItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            SliderItemModel model =
                state.homeTwoModelObj?.sliderItemList[index] ??
                    SliderItemModel();
            return SliderItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCategories(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 263.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_categories".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 203.h,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_see_all".tr,
                    style: CustomTextStyles.titleSmallPoppinsBlack90001Medium_3,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightBlack90001,
                  height: 10.v,
                  width: 5.h,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 7.v,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          SizedBox(
            height: 97.v,
            child: BlocSelector<HomeTwoBloc, HomeTwoState, HomeTwoModel?>(
              selector: (state) => state.homeTwoModelObj,
              builder: (context, homeTwoModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(
                    left: 266.h,
                    right: 5.h,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 47.h,
                    );
                  },
                  itemCount:
                      homeTwoModelObj?.merkcomponent1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Merkcomponent1ItemModel model =
                        homeTwoModelObj?.merkcomponent1ItemList[index] ??
                            Merkcomponent1ItemModel();
                    return Merkcomponent1ItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBestOffers(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 28.h,
          right: 23.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(
                "lbl_best_offers".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 7.v),
              child: Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.titleSmallPoppinsBlack90001Medium_3,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightBlack90001,
              height: 10.v,
              width: 5.h,
              margin: EdgeInsets.only(
                left: 4.h,
                top: 13.v,
                bottom: 5.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          right: 19.h,
        ),
        child: BlocSelector<HomeTwoBloc, HomeTwoState, HomeTwoModel?>(
          selector: (state) => state.homeTwoModelObj,
          builder: (context, homeTwoModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 279.v,
                crossAxisCount: 2,
                mainAxisSpacing: 21.h,
                crossAxisSpacing: 21.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: homeTwoModelObj?.productcard8ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productcard8ItemModel model =
                    homeTwoModelObj?.productcard8ItemList[index] ??
                        Productcard8ItemModel();
                return Productcard8ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
