import '../models/countryselectionlist_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountryselectionlistItemWidget extends StatelessWidget {
  CountryselectionlistItemWidget(
    this.countryselectionlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CountryselectionlistItemModel countryselectionlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: countryselectionlistItemModelObj?.userImage,
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.only(
              left: 9.h,
              bottom: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Text(
              countryselectionlistItemModelObj.text!,
              style: CustomTextStyles.bodyMediumJFFlat,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: countryselectionlistItemModelObj?.checkmarkImage,
            height: 9.v,
            width: 13.h,
            margin: EdgeInsets.symmetric(vertical: 7.v),
          ),
        ],
      ),
    );
  }
}
