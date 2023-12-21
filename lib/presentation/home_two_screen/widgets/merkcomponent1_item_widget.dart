import '../models/merkcomponent1_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Merkcomponent1ItemWidget extends StatelessWidget {
  Merkcomponent1ItemWidget(
    this.merkcomponent1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Merkcomponent1ItemModel merkcomponent1ItemModelObj;

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
              imagePath: merkcomponent1ItemModelObj?.drugIcon,
            ),
          ),
          SizedBox(height: 13.v),
          Text(
            merkcomponent1ItemModelObj.medicineText!,
            style: CustomTextStyles.titleSmallGray90001_1,
          ),
          SizedBox(height: 2.v),
          Text(
            merkcomponent1ItemModelObj.itemText!,
            style: CustomTextStyles.bodySmallGray90001,
          ),
        ],
      ),
    );
  }
}
