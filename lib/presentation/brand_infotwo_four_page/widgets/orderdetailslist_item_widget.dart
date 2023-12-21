import '../models/orderdetailslist_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OrderdetailslistItemWidget extends StatelessWidget {
  OrderdetailslistItemWidget(
    this.orderdetailslistItemModelObj, {
    Key? key,
    this.onTapOrderDetails,
  }) : super(
          key: key,
        );

  OrderdetailslistItemModel orderdetailslistItemModelObj;

  VoidCallback? onTapOrderDetails;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapOrderDetails!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.outlineBlueGrayF.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderdetailslistItemModelObj.onTheWayText!,
                        style: CustomTextStyles.bodyMediumPrimary,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        orderdetailslistItemModelObj.billNumberText!,
                        style: CustomTextStyles.titleMediumSemiBold16,
                      ),
                      SizedBox(height: 1.v),
                      Text(
                        orderdetailslistItemModelObj.orderDateText!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 49.v,
                    ),
                    child: Text(
                      orderdetailslistItemModelObj.priceText!,
                      style: CustomTextStyles.titleSmall15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          orderdetailslistItemModelObj.paymentStatusText!,
                          style: CustomTextStyles.bodyMediumBluegray80001,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        orderdetailslistItemModelObj.paymentMethodText!,
                        style: CustomTextStyles
                            .titleSmallPoppinsBlack90001Medium_1,
                      ),
                    ],
                  ),
                  CustomElevatedButton(
                    width: 99.h,
                    text: "lbl_details".tr,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      bottom: 2.v,
                    ),
                    buttonStyle: CustomButtonStyles.fillPrimaryTL13,
                    buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
