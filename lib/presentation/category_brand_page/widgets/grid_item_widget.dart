import '../models/grid_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  GridItemWidget(
    this.gridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridItemModel gridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: gridItemModelObj?.image,
          height: 85.adaptSize,
          width: 85.adaptSize,
          radius: BorderRadius.circular(
            11.h,
          ),
        ),
        Text(
          gridItemModelObj.text!,
          style: CustomTextStyles.titleSmallGray90001,
        ),
      ],
    );
  }
}
