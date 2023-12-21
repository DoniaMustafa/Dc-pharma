import '../models/merkcomponent5_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Merkcomponent5ItemWidget extends StatelessWidget {
  Merkcomponent5ItemWidget(
    this.merkcomponent5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Merkcomponent5ItemModel merkcomponent5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 56.adaptSize,
            width: 56.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillGrayTL28,
            child: CustomImageView(
              imagePath: merkcomponent5ItemModelObj?.groupIcon,
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            merkcomponent5ItemModelObj.companyName!,
            style: CustomTextStyles.titleSmallGray90001,
          ),
          SizedBox(height: 4.v),
          Text(
            merkcomponent5ItemModelObj.itemCount!,
            style: CustomTextStyles.bodySmallGray9000112,
          ),
        ],
      ),
    );
  }
}
