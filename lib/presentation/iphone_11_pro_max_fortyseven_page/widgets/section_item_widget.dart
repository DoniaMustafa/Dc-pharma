import '../models/section_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SectionItemWidget extends StatelessWidget {
  SectionItemWidget(
    this.sectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SectionItemModel sectionItemModelObj;

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    sectionItemModelObj.productName!,
                    style: CustomTextStyles.labelLarge13,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    sectionItemModelObj.productCompany!,
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
                              margin: EdgeInsets.only(bottom: 2.v),
                            ),
                            Text(
                              sectionItemModelObj.productRating!,
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        sectionItemModelObj.productReviews!,
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
                        sectionItemModelObj.productPrice1!,
                        style: CustomTextStyles.titleSmall15,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 2.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          sectionItemModelObj.productPrice2!,
                          style: CustomTextStyles.bodySmallBlack90011.copyWith(
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
              top: 9.v,
              right: 15.h,
              bottom: 44.v,
            ),
            child: CustomIconButton(
              height: 34.adaptSize,
              width: 34.adaptSize,
              padding: EdgeInsets.all(8.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCartWhiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
