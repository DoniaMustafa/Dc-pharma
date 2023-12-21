import '../models/userprofile1_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
    this.onTapTxtEgpText,
    this.onTapTxtOneThousandText,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  VoidCallback? onTapTxtEgpText;

  VoidCallback? onTapTxtOneThousandText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62.v,
      width: 61.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              userprofile1ItemModelObj.twentyText!,
              style: theme.textTheme.headlineLarge,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      onTapTxtEgpText!.call();
                    },
                    child: Text(
                      userprofile1ItemModelObj.egpText!,
                      style: CustomTextStyles.bodySmallPoppins,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                GestureDetector(
                  onTap: () {
                    onTapTxtOneThousandText!.call();
                  },
                  child: Text(
                    userprofile1ItemModelObj.oneThousandText!,
                    style: CustomTextStyles.labelLargePoppinsRed700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
