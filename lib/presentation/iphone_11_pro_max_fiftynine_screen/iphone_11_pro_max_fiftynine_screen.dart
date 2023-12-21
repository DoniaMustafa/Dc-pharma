import 'bloc/iphone_11_pro_max_fiftynine_bloc.dart';
import 'models/iphone_11_pro_max_fiftynine_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxFiftynineScreen extends StatelessWidget {
  const Iphone11ProMaxFiftynineScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxFiftynineBloc>(
      create: (context) =>
          Iphone11ProMaxFiftynineBloc(Iphone11ProMaxFiftynineState(
        iphone11ProMaxFiftynineModelObj: Iphone11ProMaxFiftynineModel(),
      ))
            ..add(Iphone11ProMaxFiftynineInitialEvent()),
      child: Iphone11ProMaxFiftynineScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxFiftynineBloc,
        Iphone11ProMaxFiftynineState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              height: 752.v,
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 36.h,
                vertical: 13.v,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGradient200x338,
                    height: 200.v,
                    width: 338.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 41.v,
                      width: 151.h,
                      margin: EdgeInsets.only(top: 140.v),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle18654,
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
                                "lbl_50_flash_sale".tr,
                                style: CustomTextStyles.titleMediumWhiteA70016,
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
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup1Black90001,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 20.v,
          bottom: 24.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_beauty_tools2".tr,
      ),
    );
  }
}
