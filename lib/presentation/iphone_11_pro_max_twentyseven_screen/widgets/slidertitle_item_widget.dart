import '../models/slidertitle_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class SlidertitleItemWidget extends StatelessWidget {
  SlidertitleItemWidget(
    this.slidertitleItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SlidertitleItemModel slidertitleItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 34.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder64,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup779,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle3,
            height: 263.adaptSize,
            width: 263.adaptSize,
            radius: BorderRadius.only(
              topLeft: Radius.circular(132.h),
              topRight: Radius.circular(131.h),
              bottomLeft: Radius.circular(132.h),
              bottomRight: Radius.circular(123.h),
            ),
          ),
          SizedBox(height: 28.v),
          Text(
            "msg_dr_pharma_best".tr,
            style: CustomTextStyles.headlineSmallOutfitErrorContainer,
          ),
          SizedBox(height: 28.v),
          Container(
            width: 300.h,
            margin: EdgeInsets.only(right: 8.h),
            child: Text(
              "msg_at_doctor_pharma".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumOutfit,
            ),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }
}
