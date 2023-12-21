import '../models/productcard5_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard5ItemWidget extends StatelessWidget {
  Productcard5ItemWidget(
    this.productcard5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard5ItemModel productcard5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineGray6003f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDownload7RemovebgPreview,
            height: 80.adaptSize,
            width: 80.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
          ),
          Container(
            width: 225.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        productcard5ItemModelObj.productName!,
                        style: CustomTextStyles.labelLarge13,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        productcard5ItemModelObj.productCompany!,
                        style: CustomTextStyles.bodySmallBluegray400,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 122.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 36.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 13.adaptSize,
                                  width: 13.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Text(
                                  productcard5ItemModelObj.productRating!,
                                  style: CustomTextStyles.labelLargeBlack900,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            productcard5ItemModelObj.productReviews!,
                            style: CustomTextStyles.bodySmallGray400,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Row(
                        children: [
                          Text(
                            productcard5ItemModelObj.productPrice1!,
                            style: CustomTextStyles.titleSmall15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 4.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              productcard5ItemModelObj.productPrice2!,
                              style:
                                  CustomTextStyles.bodySmallBlack90011.copyWith(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 2.v,
                    bottom: 9.v,
                  ),
                  child: Column(
                    children: [
                      CustomIconButton(
                        height: 24.v,
                        width: 29.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgClock,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        productcard5ItemModelObj.productCount!,
                        style: CustomTextStyles.labelLargeAlmarai,
                      ),
                      SizedBox(height: 5.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 28.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 9.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.outlineRedA400.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder7,
                          ),
                          child: Text(
                            productcard5ItemModelObj.plusIcon!,
                            style: CustomTextStyles.titleMediumAlmaraiRedA400,
                          ),
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
}
