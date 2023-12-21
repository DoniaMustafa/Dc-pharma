import '../models/signuptwo_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignuptwoItemWidget extends StatelessWidget {
  SignuptwoItemWidget(
    this.signuptwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SignuptwoItemModel signuptwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 59.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: signuptwoItemModelObj?.lab,
            height: 49.adaptSize,
            width: 49.adaptSize,
          ),
          SizedBox(height: 14.v),
          Text(
            signuptwoItemModelObj.lab1!,
            style: CustomTextStyles.titleSmallAlmaraiBlack90001,
          ),
        ],
      ),
    );
  }
}
