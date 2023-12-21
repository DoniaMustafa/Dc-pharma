import '../models/merkcomponent3_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Merkcomponent3ItemWidget extends StatelessWidget {
  Merkcomponent3ItemWidget(
    this.merkcomponent3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Merkcomponent3ItemModel merkcomponent3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillGrayTL25,
            child: CustomImageView(
              imagePath: merkcomponent3ItemModelObj?.drugIcon,
            ),
          ),
          SizedBox(height: 13.v),
          Text(
            merkcomponent3ItemModelObj.medicineText!,
            style: CustomTextStyles.titleSmallGray90001_1,
          ),
          SizedBox(height: 2.v),
          Text(
            merkcomponent3ItemModelObj.itemCountText!,
            style: CustomTextStyles.bodySmallGray90001,
          ),
        ],
      ),
    );
  }
}
