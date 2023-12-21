import '../models/productcardlist3_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Productcardlist3ItemWidget extends StatelessWidget {
  Productcardlist3ItemWidget(
    this.productcardlist3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Productcardlist3ItemModel productcardlist3ItemModelObj;

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
          Container(
            width: 219.h,
            margin: EdgeInsets.only(top: 3.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDownload7RemovebgPreview,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          productcardlist3ItemModelObj.productName!,
                          style: CustomTextStyles.labelLarge13,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          productcardlist3ItemModelObj.productDescription!,
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
                              productcardlist3ItemModelObj.ratingText!,
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                            Text(
                              productcardlist3ItemModelObj.reviewCount!,
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
                              productcardlist3ItemModelObj.price1!,
                              style: CustomTextStyles.titleSmall15,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                productcardlist3ItemModelObj.price2!,
                                style: CustomTextStyles.bodySmallBlack90011
                                    .copyWith(
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
              ],
            ),
          ),
          Container(
            width: 43.h,
            margin: EdgeInsets.only(
              left: 66.h,
              top: 26.v,
              bottom: 23.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_quantity".tr,
                    style: CustomTextStyles.labelMediumPoppinsBlack90001Medium
                        .copyWith(
                      height: 1.85,
                    ),
                  ),
                  TextSpan(
                    text: "lbl_5".tr,
                    style: CustomTextStyles.labelMediumPoppinsRed700,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
