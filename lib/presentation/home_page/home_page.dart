import '../home_page/widgets/merkcomponent5_item_widget.dart';
import '../home_page/widgets/productcardgrid2_item_widget.dart';
import '../home_page/widgets/userprofile5_item_widget.dart';
import '../home_page/widgets/userprofileslider2_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/merkcomponent5_item_model.dart';
import 'models/productcardgrid2_item_model.dart';
import 'models/userprofile5_item_model.dart';
import 'models/userprofileslider2_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_circleimage_one.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:drfarama/widgets/app_bar/appbar_trailing_image.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeModelObj: HomeModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 35.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildUserProfileSlider(context),
                  SizedBox(height: 36.v),
                  _buildCategoriesColumn(context),
                  SizedBox(height: 28.v),
                  _buildBrandesColumn(context),
                  SizedBox(height: 37.v),
                  _buildBestOffersRow(context),
                  SizedBox(height: 13.v),
                  _buildProductCardGrid(context),
                ],
              ),
            ),
          ),
        ),
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
  Widget _buildUserProfileSlider(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
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
          itemCount: state.homeModelObj?.userprofileslider2ItemList.length ?? 0,
          itemBuilder: (context, index, realIndex) {
            Userprofileslider2ItemModel model =
                state.homeModelObj?.userprofileslider2ItemList[index] ??
                    Userprofileslider2ItemModel();
            return Userprofileslider2ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCategoriesColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 267.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_categories".tr,
                  style: CustomTextStyles.titleMediumSemiBold_1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 202.h,
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
                    top: 8.v,
                    bottom: 8.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 100.v,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
              selector: (state) => state.homeModelObj,
              builder: (context, homeModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 264.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 32.h,
                    );
                  },
                  itemCount: homeModelObj?.userprofile5ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Userprofile5ItemModel model =
                        homeModelObj?.userprofile5ItemList[index] ??
                            Userprofile5ItemModel();
                    return Userprofile5ItemWidget(
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
  Widget _buildBrandesColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "lbl_brandes".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 231.h,
                  top: 6.v,
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
                  top: 13.v,
                  bottom: 5.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 109.v,
            child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
              selector: (state) => state.homeModelObj,
              builder: (context, homeModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(
                    left: 272.h,
                    right: 15.h,
                  ),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 36.h,
                    );
                  },
                  itemCount: homeModelObj?.merkcomponent5ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Merkcomponent5ItemModel model =
                        homeModelObj?.merkcomponent5ItemList[index] ??
                            Merkcomponent5ItemModel();
                    return Merkcomponent5ItemWidget(
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
  Widget _buildBestOffersRow(BuildContext context) {
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
  Widget _buildProductCardGrid(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          right: 19.h,
        ),
        child: BlocSelector<HomeBloc, HomeState, HomeModel?>(
          selector: (state) => state.homeModelObj,
          builder: (context, homeModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 279.v,
                crossAxisCount: 2,
                mainAxisSpacing: 21.h,
                crossAxisSpacing: 21.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: homeModelObj?.productcardgrid2ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Productcardgrid2ItemModel model =
                    homeModelObj?.productcardgrid2ItemList[index] ??
                        Productcardgrid2ItemModel();
                return Productcardgrid2ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
