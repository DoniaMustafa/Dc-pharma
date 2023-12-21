import '../models/productcardlist2_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcardlist2ItemWidget extends StatelessWidget {
  Productcardlist2ItemWidget(
    this.productcardlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcardlist2ItemModel productcardlist2ItemModelObj;

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
                      productcardlist2ItemModelObj.productName!,
                      style: CustomTextStyles.labelLarge13,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 3.h),
                    child: Text(
                      productcardlist2ItemModelObj.productDescription!,
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
                          productcardlist2ItemModelObj.ratingValue!,
                          style: CustomTextStyles.labelLargeBlack900,
                        ),
                        Text(
                          productcardlist2ItemModelObj.reviewCount!,
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
                          productcardlist2ItemModelObj.price1!,
                          style: CustomTextStyles.titleSmall15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 2.v,
                            bottom: 2.v,
                          ),
                          child: Text(
                            productcardlist2ItemModelObj.price2!,
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
                            productcardlist2ItemModelObj.clockText!,
                            style: CustomTextStyles.titleLargeRedA400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    productcardlist2ItemModelObj.quantity!,
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
                        productcardlist2ItemModelObj.addButton!,
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
