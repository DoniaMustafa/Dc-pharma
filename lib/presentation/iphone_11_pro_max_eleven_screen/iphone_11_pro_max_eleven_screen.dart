import 'bloc/iphone_11_pro_max_eleven_bloc.dart';
import 'models/iphone_11_pro_max_eleven_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class Iphone11ProMaxElevenScreen extends StatelessWidget {
  const Iphone11ProMaxElevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxElevenBloc>(
      create: (context) => Iphone11ProMaxElevenBloc(Iphone11ProMaxElevenState(
        iphone11ProMaxElevenModelObj: Iphone11ProMaxElevenModel(),
      ))
        ..add(Iphone11ProMaxElevenInitialEvent()),
      child: Iphone11ProMaxElevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxElevenBloc, Iphone11ProMaxElevenState>(
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
                        height: 210.adaptSize,
                        width: 210.adaptSize,
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
