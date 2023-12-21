import '../models/productdetails_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductdetailsItemWidget extends StatelessWidget {
  ProductdetailsItemWidget(
    this.productdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductdetailsItemModel productdetailsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineGray6003f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      width: 174.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 38.h,
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillRed.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder7,
            ),
            child: Text(
              productdetailsItemModelObj.widget!,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 23.v),
          CustomImageView(
            imagePath: ImageConstant.imgDownload7RemovebgPreview,
            height: 97.v,
            width: 100.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 17.h),
          ),
          SizedBox(height: 8.v),
          Text(
            productdetailsItemModelObj.productName!,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          Text(
            productdetailsItemModelObj.productDescription!,
            style: CustomTextStyles.bodySmallPoppinsBlack90001_1,
          ),
          SizedBox(height: 4.v),
          Text(
            productdetailsItemModelObj.productQuantity!,
            style: CustomTextStyles.labelMediumPoppinsBlack90001,
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  productdetailsItemModelObj.productPrice!,
                  style: CustomTextStyles.titleSmallBlack90001,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  productdetailsItemModelObj.productStatus!,
                  style: CustomTextStyles.labelLargePoppinsRed700Medium_1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
