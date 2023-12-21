import '../home_three_screen/widgets/merkcomponent4_item_widget.dart';
import '../home_three_screen/widgets/productcard9_item_widget.dart';
import '../home_three_screen/widgets/slider1_item_widget.dart';
import 'bloc/home_three_bloc.dart';
import 'models/home_three_model.dart';
import 'models/merkcomponent4_item_model.dart';
import 'models/productcard9_item_model.dart';
import 'models/slider1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:drfarama/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:drfarama/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeThreeScreen extends StatelessWidget {
  HomeThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeThreeBloc>(
      create: (context) => HomeThreeBloc(HomeThreeState(
        homeThreeModelObj: HomeThreeModel(),
      ))
        ..add(HomeThreeInitialEvent()),
      child: HomeThreeScreen(),
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
              SizedBox(height: 32.v),
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
      leadingWidth: 72.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgRectangle18623,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 2.v,
          bottom: 2.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(
          children: [
            AppbarSubtitleSeven(
              text: "lbl_a_z_pharmacy".tr,
            ),
            AppbarSubtitleSix(
              text: "lbl_egypt2".tr,
              margin: EdgeInsets.only(right: 65.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgContrastRed70048x53,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 3.v,
            right: 4.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.img8134640GiftBi,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 3.v,
            right: 24.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return BlocBuilder<HomeThreeBloc, HomeThreeState>(
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
          itemCount: state.homeThreeModelObj?.slider1ItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            Slider1ItemModel model =
                state.homeThreeModelObj?.slider1ItemList[index] ??
                    Slider1ItemModel();
            return Slider1ItemWidget(
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
            child: BlocSelector<HomeThreeBloc, HomeThreeState, HomeThreeModel?>(
              selector: (state) => state.homeThreeModelObj,
              builder: (context, homeThreeModelObj) {
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
                      homeThreeModelObj?.merkcomponent4ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Merkcomponent4ItemModel model =
                        homeThreeModelObj?.merkcomponent4ItemList[index] ??
                            Merkcomponent4ItemModel();
                    return Merkcomponent4ItemWidget(
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
        child: BlocSelector<HomeThreeBloc, HomeThreeState, HomeThreeModel?>(
          selector: (state) => state.homeThreeModelObj,
          builder: (context, homeThreeModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 279.v,
                crossAxisCount: 2,
                mainAxisSpacing: 21.h,
                crossAxisSpacing: 21.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: homeThreeModelObj?.productcard9ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productcard9ItemModel model =
                    homeThreeModelObj?.productcard9ItemList[index] ??
                        Productcard9ItemModel();
                return Productcard9ItemWidget(
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
