import '../models/slider1_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class Slider1ItemWidget extends StatelessWidget {
  Slider1ItemWidget(
    this.slider1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Slider1ItemModel slider1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182.v,
      width: 287.h,
      margin: EdgeInsets.only(
        left: 636.h,
        top: 8.v,
        bottom: 8.v,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: slider1ItemModelObj?.img,
            height: 182.v,
            width: 287.h,
            radius: BorderRadius.circular(
              12.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 182.v,
              width: 287.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: slider1ItemModelObj?.gradient,
                    height: 182.v,
                    width: 287.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 18.h,
                        vertical: 13.v,
                      ),
                      decoration: AppDecoration.gradientBlackToBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 153.v),
                          SizedBox(
                            height: 1.v,
                            child: AnimatedSmoothIndicator(
                              activeIndex: 0,
                              count: 4,
                              effect: ScrollingDotsEffect(
                                spacing: 4,
                                activeDotColor: appTheme.whiteA700,
                                dotColor: appTheme.whiteA700.withOpacity(0.49),
                                dotHeight: 1.v,
                                dotWidth: 6.h,
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
        ],
      ),
    );
  }
}
