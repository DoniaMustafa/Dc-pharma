import 'bloc/iphone_11_pro_max_thirtyfour_bloc.dart';
import 'models/iphone_11_pro_max_thirtyfour_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone11ProMaxThirtyfourScreen extends StatelessWidget {
  const Iphone11ProMaxThirtyfourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxThirtyfourBloc>(
      create: (context) =>
          Iphone11ProMaxThirtyfourBloc(Iphone11ProMaxThirtyfourState(
        iphone11ProMaxThirtyfourModelObj: Iphone11ProMaxThirtyfourModel(),
      ))
            ..add(Iphone11ProMaxThirtyfourInitialEvent()),
      child: Iphone11ProMaxThirtyfourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxThirtyfourBloc,
        Iphone11ProMaxThirtyfourState>(
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
                    CustomImageView(
                      imagePath: ImageConstant.imgMaskGroup,
                      height: 331.v,
                      width: 286.h,
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
