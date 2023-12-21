import '../models/passwordcomponent_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PasswordcomponentItemWidget extends StatelessWidget {
  PasswordcomponentItemWidget(
    this.passwordcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PasswordcomponentItemModel passwordcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.outlineBlueGrayF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: passwordcomponentItemModelObj?.confirmPasswordImage,
              height: 21.v,
              width: 16.h,
              margin: EdgeInsets.only(left: 9.h),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 3.v,
                bottom: 3.v,
              ),
              child: Text(
                passwordcomponentItemModelObj.confirmPasswordText!,
                style: CustomTextStyles.bodyMediumAlmaraiGray700,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: passwordcomponentItemModelObj?.showPasswordImage,
              height: 21.adaptSize,
              width: 21.adaptSize,
            ),
          ],
        ),
      ),
    );
  }
}
