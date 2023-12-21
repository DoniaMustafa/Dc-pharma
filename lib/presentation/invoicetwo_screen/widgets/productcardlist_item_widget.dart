import '../models/productcardlist_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductcardlistItemWidget extends StatelessWidget {
  ProductcardlistItemWidget(
    this.productcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductcardlistItemModel productcardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
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
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      productcardlistItemModelObj.productName!,
                      style: CustomTextStyles.labelLarge13,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      productcardlistItemModelObj.productCompany!,
                      style: CustomTextStyles.bodySmallBluegray400,
                    ),
                  ),
                  SizedBox(height: 3.v),
                  SizedBox(
                    width: 122.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSignal,
                          height: 13.adaptSize,
                          width: 13.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Text(
                          productcardlistItemModelObj.productRating!,
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                        Text(
                          productcardlistItemModelObj.productReviewCount!,
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
                          productcardlistItemModelObj.productPrice1!,
                          style: CustomTextStyles.titleSmall15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            productcardlistItemModelObj.productPrice2!,
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
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                right: 25.h,
                bottom: 8.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 24.v,
                    width: 29.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClock,
                          height: 21.v,
                          width: 29.h,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            productcardlistItemModelObj
                                .productAvailabilityText!,
                            style: CustomTextStyles.titleLargeRedA400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    productcardlistItemModelObj.productQuantity!,
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
                        productcardlistItemModelObj.productAddToCartButton!,
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
    );
  }
}
