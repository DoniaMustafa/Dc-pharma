import '../models/userprofileslider_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class UserprofilesliderItemWidget extends StatelessWidget {
  UserprofilesliderItemWidget(
    this.userprofilesliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesliderItemModel userprofilesliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.v,
      width: 315.h,
      margin: EdgeInsets.only(
        left: 304.h,
        right: 50.h,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: userprofilesliderItemModelObj?.userImage,
            height: 200.v,
            width: 315.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 200.v,
              width: 315.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: userprofilesliderItemModelObj?.gradientImage,
                    height: 200.v,
                    width: 315.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 16.v,
                      ),
                      decoration: AppDecoration.gradientBlackToBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 17.v),
                          CustomImageView(
                            imagePath:
                                userprofilesliderItemModelObj?.whatsappImage,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                          ),
                          SizedBox(height: 5.v),
                          Padding(
                            padding: EdgeInsets.only(right: 11.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 263.h,
                                  child: Text(
                                    userprofilesliderItemModelObj
                                        .reachRateText!,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleLargePoppins
                                        .copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 16.v),
                                SizedBox(
                                  height: 2.v,
                                  child: AnimatedSmoothIndicator(
                                    activeIndex: 0,
                                    count: 5,
                                    effect: ScrollingDotsEffect(
                                      spacing: 4,
                                      activeDotColor: appTheme.whiteA700,
                                      dotColor:
                                          appTheme.whiteA700.withOpacity(0.49),
                                      dotHeight: 2.v,
                                      dotWidth: 6.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
