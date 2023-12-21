import '../models/userprofileslider2_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class Userprofileslider2ItemWidget extends StatelessWidget {
  Userprofileslider2ItemWidget(
    this.userprofileslider2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofileslider2ItemModel userprofileslider2ItemModelObj;

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
            imagePath: userprofileslider2ItemModelObj?.userImage,
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
                    imagePath: userprofileslider2ItemModelObj?.gradientImage,
                    height: 200.v,
                    width: 315.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Container(
                        height: 200.v,
                        width: 315.h,
                        padding: EdgeInsets.symmetric(vertical: 9.v),
                        decoration: AppDecoration.gradientBlackToBlack.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 20.h,
                                  bottom: 7.v,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: userprofileslider2ItemModelObj
                                          ?.whatsAppImage,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                    ),
                                    SizedBox(height: 5.v),
                                    SizedBox(
                                      width: 263.h,
                                      child: Text(
                                        userprofileslider2ItemModelObj
                                            .reachRateText!,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .titleLargePoppins
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
                                          dotColor: appTheme.whiteA700
                                              .withOpacity(0.49),
                                          dotHeight: 2.v,
                                          dotWidth: 6.h,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                height: 41.v,
                                width: 151.h,
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: userprofileslider2ItemModelObj
                                          ?.rectangleImage,
                                      height: 41.v,
                                      width: 151.h,
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: 6.v,
                                          right: 8.h,
                                        ),
                                        child: Text(
                                          userprofileslider2ItemModelObj
                                              .flashSaleText!,
                                          style: CustomTextStyles
                                              .titleMediumWhiteA70016,
                                        ),
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
