import 'bloc/iphone_11_pro_max_thirtyseven_bloc.dart';
import 'models/iphone_11_pro_max_thirtyseven_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone11ProMaxThirtysevenScreen extends StatelessWidget {
  const Iphone11ProMaxThirtysevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxThirtysevenBloc>(
      create: (context) =>
          Iphone11ProMaxThirtysevenBloc(Iphone11ProMaxThirtysevenState(
        iphone11ProMaxThirtysevenModelObj: Iphone11ProMaxThirtysevenModel(),
      ))
            ..add(Iphone11ProMaxThirtysevenInitialEvent()),
      child: Iphone11ProMaxThirtysevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxThirtysevenBloc,
        Iphone11ProMaxThirtysevenState>(
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
                  left: 59.h,
                  top: 144.v,
                  right: 59.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.v),
                    SizedBox(
                      height: 331.v,
                      width: 286.h,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup,
                            height: 331.v,
                            width: 286.h,
                            alignment: Alignment.center,
                          ),
                          Opacity(
                            opacity: 0.9,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup,
                              height: 56.v,
                              width: 150.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 55.h,
                                bottom: 47.v,
                              ),
                            ),
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
