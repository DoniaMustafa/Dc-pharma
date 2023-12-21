import '../models/notification_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(
    this.notificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationItemModel notificationItemModelObj;

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
            imagePath: notificationItemModelObj?.televisionImage,
            height: 16.v,
            width: 33.h,
            margin: EdgeInsets.only(
              top: 21.v,
              bottom: 20.v,
            ),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 184.h,
                child: Text(
                  notificationItemModelObj.messageText!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPoppinsBlack9000112_1,
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                notificationItemModelObj.timestampText!,
                style: CustomTextStyles.bodySmallPoppinsGray6007f,
              ),
            ],
          ),
          Container(
            width: 36.h,
            margin: EdgeInsets.fromLTRB(19.h, 11.v, 8.h, 8.v),
            child: Text(
              notificationItemModelObj.pointText!,
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
