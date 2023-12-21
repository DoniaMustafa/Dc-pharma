import 'bloc/brand_infotwo_seven_bloc.dart';
import 'models/brand_infotwo_seven_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BrandInfotwoSevenPage extends StatefulWidget {
  const BrandInfotwoSevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  BrandInfotwoSevenPageState createState() => BrandInfotwoSevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BrandInfotwoSevenBloc>(
      create: (context) => BrandInfotwoSevenBloc(BrandInfotwoSevenState(
        brandInfotwoSevenModelObj: BrandInfotwoSevenModel(),
      ))
        ..add(BrandInfotwoSevenInitialEvent()),
      child: BrandInfotwoSevenPage(),
    );
  }
}

class BrandInfotwoSevenPageState extends State<BrandInfotwoSevenPage>
    with AutomaticKeepAliveClientMixin<BrandInfotwoSevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<BrandInfotwoSevenBloc, BrandInfotwoSevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 41.v),
                  _buildOrderDetails(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlueGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.v),
                      child: Text(
                        "lbl_cancelled".tr,
                        style: CustomTextStyles.bodyMediumRed700_1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.v),
                      child: Text(
                        "lbl_235_00".tr,
                        style: CustomTextStyles.titleSmall15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.v),
                Text(
                  "msg_bill_no_23455_64327".tr,
                  style: CustomTextStyles.titleMediumSemiBold16,
                ),
                SizedBox(height: 1.v),
                Text(
                  "msg_ordered_20_11_2023".tr,
                  style: theme.textTheme.bodyMedium,
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
                        "lbl_payment_status".tr,
                        style: CustomTextStyles.bodyMediumBluegray80001,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "msg_paiement_when_recieving".tr,
                      style:
                          CustomTextStyles.titleSmallPoppinsBlack90001Medium_1,
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
          SizedBox(height: 9.v),
        ],
      ),
    );
  }
}
