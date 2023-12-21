import '../models/waitingtextsection_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WaitingtextsectionItemWidget extends StatelessWidget {
  WaitingtextsectionItemWidget(
    this.waitingtextsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WaitingtextsectionItemModel waitingtextsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(21.h, 34.v, 27.h, 61.v),
      child: Column(
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
          SizedBox(
            width: 299.h,
            child: Text(
              "msg_join_us_in_the_doctor".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumOutfit,
            ),
          ),
        ],
      ),
    );
  }
}
