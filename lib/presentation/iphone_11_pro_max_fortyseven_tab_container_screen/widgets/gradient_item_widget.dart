import '../models/gradient_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientItemWidget extends StatelessWidget {
  GradientItemWidget(
    this.gradientItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GradientItemModel gradientItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: gradientItemModelObj?.gradient,
      height: 200.v,
      width: 338.h,
      radius: BorderRadius.circular(
        12.h,
      ),
    );
  }
}
