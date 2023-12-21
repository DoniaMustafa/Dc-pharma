import '../models/sliderwidget3_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class Sliderwidget3ItemWidget extends StatelessWidget {
  Sliderwidget3ItemWidget(
    this.sliderwidget3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Sliderwidget3ItemModel sliderwidget3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
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
            imagePath: ImageConstant.imgRectangle3263x263,
            height: 263.adaptSize,
            width: 263.adaptSize,
            radius: BorderRadius.only(
              topLeft: Radius.circular(132.h),
              topRight: Radius.circular(131.h),
              bottomLeft: Radius.circular(132.h),
              bottomRight: Radius.circular(123.h),
            ),
          ),
          SizedBox(height: 30.v),
          Text(
            "msg_what_are_you_waiting".tr,
            style: CustomTextStyles.headlineSmallOutfitErrorContainer,
          ),
          SizedBox(height: 18.v),
          Container(
            width: 299.h,
            margin: EdgeInsets.only(right: 5.h),
            child: Text(
              "msg_join_us_in_the_doctor".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumOutfit,
            ),
          ),
          SizedBox(height: 27.v),
        ],
      ),
    );
  }
}
