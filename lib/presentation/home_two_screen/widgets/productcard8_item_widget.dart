import '../models/productcard8_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcard8ItemWidget extends StatelessWidget {
  Productcard8ItemWidget(
    this.productcard8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcard8ItemModel productcard8ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlineGray6003f01.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 4.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 38.h,
                        margin: EdgeInsets.only(bottom: 1.v),
                        padding: EdgeInsets.symmetric(
                          horizontal: 7.h,
                          vertical: 2.v,
                        ),
                        decoration: AppDecoration.fillRed.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder7,
                        ),
                        child: Text(
                          productcard8ItemModelObj.discountText!,
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 88.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 22.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgDownload7RemovebgPreview,
                    height: 97.v,
                    width: 100.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 18.h),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                productcard8ItemModelObj.productName!,
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                productcard8ItemModelObj.productCompany!,
                style: theme.textTheme.bodySmall,
              ),
            ),
            SizedBox(height: 3.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSignal,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      productcard8ItemModelObj.ratingText!,
                      style: CustomTextStyles.labelMediumBlack900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      productcard8ItemModelObj.reviewText!,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.v),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productcard8ItemModelObj.originalPrice!,
                          style: CustomTextStyles.bodySmallBlack900.copyWith(
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          productcard8ItemModelObj.discountedPrice!,
                          style: theme.textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 59.h,
                      bottom: 2.v,
                    ),
                    child: CustomIconButton(
                      height: 31.v,
                      width: 32.h,
                      padding: EdgeInsets.all(7.h),
                      child: CustomImageView(
                        imagePath: productcard8ItemModelObj?.addToCartButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
