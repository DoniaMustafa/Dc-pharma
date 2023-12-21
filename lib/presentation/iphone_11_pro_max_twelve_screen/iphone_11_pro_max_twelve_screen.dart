import 'bloc/iphone_11_pro_max_twelve_bloc.dart';
import 'models/iphone_11_pro_max_twelve_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone11ProMaxTwelveScreen extends StatelessWidget {
  const Iphone11ProMaxTwelveScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxTwelveBloc>(
      create: (context) => Iphone11ProMaxTwelveBloc(Iphone11ProMaxTwelveState(
        iphone11ProMaxTwelveModelObj: Iphone11ProMaxTwelveModel(),
      ))
        ..add(Iphone11ProMaxTwelveInitialEvent()),
      child: Iphone11ProMaxTwelveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxTwelveBloc, Iphone11ProMaxTwelveState>(
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
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5.v),
                    Opacity(
                      opacity: 0.8,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup,
                        height: 110.adaptSize,
                        width: 110.adaptSize,
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
