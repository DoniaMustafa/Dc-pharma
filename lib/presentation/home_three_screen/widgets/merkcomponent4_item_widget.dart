import '../models/merkcomponent4_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Merkcomponent4ItemWidget extends StatelessWidget {
  Merkcomponent4ItemWidget(
    this.merkcomponent4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Merkcomponent4ItemModel merkcomponent4ItemModelObj;

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
              imagePath: merkcomponent4ItemModelObj?.drugIcon,
            ),
          ),
          SizedBox(height: 13.v),
          Text(
            merkcomponent4ItemModelObj.medicineText!,
            style: CustomTextStyles.titleSmallGray90001_1,
          ),
          SizedBox(height: 2.v),
          Text(
            merkcomponent4ItemModelObj.itemText!,
            style: CustomTextStyles.bodySmallGray90001,
          ),
        ],
      ),
    );
  }
}
