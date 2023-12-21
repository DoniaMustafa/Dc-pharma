import '../models/userprofile5_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  Userprofile5ItemWidget(
    this.userprofile5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile5ItemModel userprofile5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.adaptSize,
      width: 100.adaptSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userprofile5ItemModelObj?.userImage,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              13.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.gradientBlackToBlack90001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 45.v),
                  Text(
                    userprofile5ItemModelObj.medicinesText!,
                    style: CustomTextStyles.labelLargePoppinsWhiteA700SemiBold,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
