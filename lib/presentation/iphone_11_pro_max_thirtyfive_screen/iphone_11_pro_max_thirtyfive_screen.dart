import 'bloc/iphone_11_pro_max_thirtyfive_bloc.dart';
import 'models/iphone_11_pro_max_thirtyfive_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone11ProMaxThirtyfiveScreen extends StatelessWidget {
  const Iphone11ProMaxThirtyfiveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxThirtyfiveBloc>(
      create: (context) =>
          Iphone11ProMaxThirtyfiveBloc(Iphone11ProMaxThirtyfiveState(
        iphone11ProMaxThirtyfiveModelObj: Iphone11ProMaxThirtyfiveModel(),
      ))
            ..add(Iphone11ProMaxThirtyfiveInitialEvent()),
      child: Iphone11ProMaxThirtyfiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxThirtyfiveBloc,
        Iphone11ProMaxThirtyfiveState>(
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
                        alignment: Alignment.bottomLeft,
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
                              width: 1.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 81.h,
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
