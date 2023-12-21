import 'bloc/iphone_11_pro_max_sixtyone_bloc.dart';
import 'models/iphone_11_pro_max_sixtyone_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone11ProMaxSixtyoneScreen extends StatelessWidget {
  const Iphone11ProMaxSixtyoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSixtyoneBloc>(
      create: (context) =>
          Iphone11ProMaxSixtyoneBloc(Iphone11ProMaxSixtyoneState(
        iphone11ProMaxSixtyoneModelObj: Iphone11ProMaxSixtyoneModel(),
      ))
            ..add(Iphone11ProMaxSixtyoneInitialEvent()),
      child: Iphone11ProMaxSixtyoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxSixtyoneBloc, Iphone11ProMaxSixtyoneState>(
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
                padding: EdgeInsets.only(
                  left: 115.h,
                  top: 282.v,
                  right: 115.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.v),
                    SizedBox(
                      height: 129.v,
                      width: 178.h,
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
