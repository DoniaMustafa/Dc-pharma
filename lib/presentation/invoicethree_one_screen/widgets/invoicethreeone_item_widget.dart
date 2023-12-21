import '../models/invoicethreeone_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InvoicethreeoneItemWidget extends StatelessWidget {
  InvoicethreeoneItemWidget(
    this.invoicethreeoneItemModelObj, {
    Key? key,
    this.onTapMywallet,
  }) : super(
          key: key,
        );

  InvoicethreeoneItemModel invoicethreeoneItemModelObj;

  VoidCallback? onTapMywallet;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMywallet!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 47.h,
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
              imagePath: invoicethreeoneItemModelObj?.mywallet,
              height: 49.adaptSize,
              width: 49.adaptSize,
            ),
            SizedBox(height: 15.v),
            Text(
              invoicethreeoneItemModelObj.myWallet!,
              style: CustomTextStyles.titleSmallAlmaraiBlack90001,
            ),
          ],
        ),
      ),
    );
  }
}
