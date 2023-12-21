import '../flash_sale_screen/widgets/productcard1_item_widget.dart';
import 'bloc/flash_sale_bloc.dart';
import 'models/flash_sale_model.dart';
import 'models/productcard1_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:drfarama/widgets/app_bar/appbar_trailing_image.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class FlashSaleScreen extends StatelessWidget {
  const FlashSaleScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FlashSaleBloc>(
      create: (context) => FlashSaleBloc(FlashSaleState(
        flashSaleModelObj: FlashSaleModel(),
      ))
        ..add(FlashSaleInitialEvent()),
      child: FlashSaleScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSeventy(context),
              SizedBox(height: 1.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildThereIsTimeLeft(context),
                      SizedBox(height: 33.v),
                      _buildProductCard(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventy(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 21.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup49,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 46.v),
          CustomAppBar(
            height: 39.v,
            leadingWidth: 55.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgGroup75040,
              margin: EdgeInsets.only(
                left: 35.h,
                top: 9.v,
                bottom: 10.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "lbl_flash_sale".tr,
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgContrastWhiteA700,
                margin: EdgeInsets.symmetric(horizontal: 19.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThereIsTimeLeft(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 34.h),
      padding: EdgeInsets.symmetric(
        horizontal: 43.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGray6003f011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "msg_there_is_time_left".tr,
            style: CustomTextStyles.titleSmallPoppinsPrimarySemiBold_1,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_01".tr,
                        style: CustomTextStyles.titleLargePoppinsPrimary,
                      ),
                    ),
                    Text(
                      "lbl_hour".tr,
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 12.v,
                  ),
                  child: Text(
                    "lbl4".tr,
                    style: CustomTextStyles.titleLargePoppinsPrimary,
                  ),
                ),
                SizedBox(
                  height: 45.v,
                  width: 47.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_minute".tr,
                          style: CustomTextStyles.bodyMediumPrimary,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "lbl_40".tr,
                          style: CustomTextStyles.titleLargePoppinsPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 12.v,
                  ),
                  child: Text(
                    "lbl4".tr,
                    style: CustomTextStyles.titleLargePoppinsPrimary,
                  ),
                ),
                SizedBox(
                  height: 45.v,
                  width: 52.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "lbl_second".tr,
                          style: CustomTextStyles.bodyMediumPrimary,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "lbl_32".tr,
                          style: CustomTextStyles.titleLargePoppinsPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return BlocSelector<FlashSaleBloc, FlashSaleState, FlashSaleModel?>(
      selector: (state) => state.flashSaleModelObj,
      builder: (context, flashSaleModelObj) {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 319.v,
            crossAxisCount: 2,
            mainAxisSpacing: 21.h,
            crossAxisSpacing: 21.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: flashSaleModelObj?.productcard1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Productcard1ItemModel model =
                flashSaleModelObj?.productcard1ItemList[index] ??
                    Productcard1ItemModel();
            return Productcard1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
