import 'bloc/iphone_11_pro_max_sixtyfour_bloc.dart';
import 'models/iphone_11_pro_max_sixtyfour_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone11ProMaxSixtyfourScreen extends StatelessWidget {
  const Iphone11ProMaxSixtyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSixtyfourBloc>(
      create: (context) =>
          Iphone11ProMaxSixtyfourBloc(Iphone11ProMaxSixtyfourState(
        iphone11ProMaxSixtyfourModelObj: Iphone11ProMaxSixtyfourModel(),
      ))
            ..add(Iphone11ProMaxSixtyfourInitialEvent()),
      child: Iphone11ProMaxSixtyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxSixtyfourBloc,
        Iphone11ProMaxSixtyfourState>(
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
                padding: EdgeInsets.symmetric(horizontal: 113.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
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
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup,
                        height: 56.v,
                        width: 150.h,
                        alignment: Alignment.center,
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
