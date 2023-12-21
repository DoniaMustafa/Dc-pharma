import '../iphone_11_pro_max_sixty_screen/widgets/merkcomponent3_item_widget.dart';
import '../iphone_11_pro_max_sixty_screen/widgets/productcardgrid1_item_widget.dart';
import '../iphone_11_pro_max_sixty_screen/widgets/userprofileslider1_item_widget.dart';
import 'bloc/iphone_11_pro_max_sixty_bloc.dart';
import 'models/iphone_11_pro_max_sixty_model.dart';
import 'models/merkcomponent3_item_model.dart';
import 'models/productcardgrid1_item_model.dart';
import 'models/userprofileslider1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_circleimage_one.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:drfarama/widgets/app_bar/appbar_trailing_image.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:drfarama/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxSixtyScreen extends StatelessWidget {
  Iphone11ProMaxSixtyScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSixtyBloc>(
      create: (context) => Iphone11ProMaxSixtyBloc(Iphone11ProMaxSixtyState(
        iphone11ProMaxSixtyModelObj: Iphone11ProMaxSixtyModel(),
      ))
        ..add(Iphone11ProMaxSixtyInitialEvent()),
      child: Iphone11ProMaxSixtyScreen(),
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
                        _buildUserProfileSlider(context),
                        SizedBox(height: 37.v),
                        _buildCategoriesColumn(context),
                        SizedBox(height: 31.v),
                        _buildBestOffersRow(context),
                        SizedBox(height: 13.v),
                        _buildProductCardGrid(context),
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
  Widget _buildUserProfileSlider(BuildContext context) {
    return BlocBuilder<Iphone11ProMaxSixtyBloc, Iphone11ProMaxSixtyState>(
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
          itemCount: state.iphone11ProMaxSixtyModelObj
                  ?.userprofileslider1ItemList.length ??
              0,
          itemBuilder: (context, index, realIndex) {
            Userprofileslider1ItemModel model = state
                    .iphone11ProMaxSixtyModelObj
                    ?.userprofileslider1ItemList[index] ??
                Userprofileslider1ItemModel();
            return Userprofileslider1ItemWidget(
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
            child: BlocSelector<Iphone11ProMaxSixtyBloc,
                Iphone11ProMaxSixtyState, Iphone11ProMaxSixtyModel?>(
              selector: (state) => state.iphone11ProMaxSixtyModelObj,
              builder: (context, iphone11ProMaxSixtyModelObj) {
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
                  itemCount: iphone11ProMaxSixtyModelObj
                          ?.merkcomponent3ItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    Merkcomponent3ItemModel model = iphone11ProMaxSixtyModelObj
                            ?.merkcomponent3ItemList[index] ??
                        Merkcomponent3ItemModel();
                    return Merkcomponent3ItemWidget(
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
        child: BlocSelector<Iphone11ProMaxSixtyBloc, Iphone11ProMaxSixtyState,
            Iphone11ProMaxSixtyModel?>(
          selector: (state) => state.iphone11ProMaxSixtyModelObj,
          builder: (context, iphone11ProMaxSixtyModelObj) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 279.v,
                crossAxisCount: 2,
                mainAxisSpacing: 21.h,
                crossAxisSpacing: 21.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: iphone11ProMaxSixtyModelObj
                      ?.productcardgrid1ItemList.length ??
                  0,
              itemBuilder: (context, index) {
                Productcardgrid1ItemModel model = iphone11ProMaxSixtyModelObj
                        ?.productcardgrid1ItemList[index] ??
                    Productcardgrid1ItemModel();
                return Productcardgrid1ItemWidget(
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
