import '../models/seventyfive_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeventyfiveItemWidget extends StatelessWidget {
  SeventyfiveItemWidget(
    this.seventyfiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SeventyfiveItemModel seventyfiveItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.outlineGray6003f01.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder28,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                    height: 24.v,
                    width: 49.h,
                    text: "lbl_15".tr,
                    buttonStyle: CustomButtonStyles.fillRedTL12,
                    buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFavoriteOnerrorcontainer,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8.v),
            CustomImageView(
              imagePath: ImageConstant.imgDownload7RemovebgPreview,
              height: 169.v,
              width: 174.h,
            ),
            SizedBox(height: 44.v),
          ],
        ),
      ),
    );
  }
}
