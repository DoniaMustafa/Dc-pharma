import '../models/notificationlist_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  NotificationlistItemWidget(
    this.notificationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationlistItemModel notificationlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: notificationlistItemModelObj?.notificationImage,
            height: 16.v,
            width: 33.h,
            margin: EdgeInsets.only(
              top: 21.v,
              bottom: 20.v,
            ),
          ),
          Spacer(
            flex: 39,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 147.h,
                child: Text(
                  notificationlistItemModelObj.notificationText1!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPoppinsBlack9000112_1,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                notificationlistItemModelObj.notificationText2!,
                style: CustomTextStyles.bodySmallPoppinsGray6007f,
              ),
            ],
          ),
          Spacer(
            flex: 60,
          ),
          Container(
            width: 36.h,
            margin: EdgeInsets.only(
              top: 11.v,
              right: 8.h,
              bottom: 8.v,
            ),
            child: Text(
              notificationlistItemModelObj.notificationText3!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargePoppinsGreen400Medium,
            ),
          ),
        ],
      ),
    );
  }
}
