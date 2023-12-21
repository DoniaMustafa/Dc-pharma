import '../models/productlisting_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductlistingItemWidget extends StatelessWidget {
  ProductlistingItemWidget(
    this.productlistingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductlistingItemModel productlistingItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlineGray6003f01.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder28,
      ),
      width: 174.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
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
                  productlistingItemModelObj.discountText!,
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
            imagePath: productlistingItemModelObj?.productImage,
            height: 97.v,
            width: 138.h,
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              productlistingItemModelObj.productTitle!,
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 4.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productlistingItemModelObj.originalPrice!,
                      style: CustomTextStyles.bodySmallBlack900.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      productlistingItemModelObj.discountedPrice!,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 59.h,
                  bottom: 4.v,
                ),
                child: CustomIconButton(
                  height: 31.v,
                  width: 32.h,
                  padding: EdgeInsets.all(9.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowLeftWhiteA700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
