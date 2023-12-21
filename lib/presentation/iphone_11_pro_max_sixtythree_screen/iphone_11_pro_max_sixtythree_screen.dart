import 'bloc/iphone_11_pro_max_sixtythree_bloc.dart';
import 'models/iphone_11_pro_max_sixtythree_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone11ProMaxSixtythreeScreen extends StatelessWidget {
  const Iphone11ProMaxSixtythreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSixtythreeBloc>(
      create: (context) =>
          Iphone11ProMaxSixtythreeBloc(Iphone11ProMaxSixtythreeState(
        iphone11ProMaxSixtythreeModelObj: Iphone11ProMaxSixtythreeModel(),
      ))
            ..add(Iphone11ProMaxSixtythreeInitialEvent()),
      child: Iphone11ProMaxSixtythreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxSixtythreeBloc,
        Iphone11ProMaxSixtythreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgIphone11ProMax,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 112.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 129.v,
                        width: 175.h,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 129.v,
                              width: 110.h,
                              alignment: Alignment.centerLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 88.v,
                              width: 86.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 7.v),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup,
                        height: 56.v,
                        width: 4.h,
                        margin: EdgeInsets.only(left: 18.h),
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
