import '../models/slidercomponent_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore: must_be_immutable
class SlidercomponentItemWidget extends StatelessWidget {
  SlidercomponentItemWidget(
    this.slidercomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SlidercomponentItemModel slidercomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
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
            "msg_all_you_have_to".tr,
            style: CustomTextStyles.headlineSmallOutfitErrorContainer,
          ),
          SizedBox(height: 20.v),
          Container(
            width: 296.h,
            margin: EdgeInsets.only(
              left: 5.h,
              right: 12.h,
            ),
            child: Text(
              "msg_whatever_your_needs".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumOutfit,
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
