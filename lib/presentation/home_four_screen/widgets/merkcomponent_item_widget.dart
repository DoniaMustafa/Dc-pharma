import '../models/merkcomponent_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MerkcomponentItemWidget extends StatelessWidget {
  MerkcomponentItemWidget(
    this.merkcomponentItemModelObj, {
    Key? key,
    this.onTapMerkComponent,
  }) : super(
          key: key,
        );

  MerkcomponentItemModel merkcomponentItemModelObj;

  VoidCallback? onTapMerkComponent;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65.h,
      child: GestureDetector(
        onTap: () {
          onTapMerkComponent!.call();
        },
        child: Column(
          children: [
            CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillGrayTL25,
              child: CustomImageView(
                imagePath: merkcomponentItemModelObj?.drugIcon,
              ),
            ),
            SizedBox(height: 13.v),
            Text(
              merkcomponentItemModelObj.medicinesText!,
              style: CustomTextStyles.titleSmallGray90001_1,
            ),
            SizedBox(height: 2.v),
            Text(
              merkcomponentItemModelObj.itemsText!,
              style: CustomTextStyles.bodySmallGray90001,
            ),
          ],
        ),
      ),
    );
  }
}
