import 'bloc/iphone_11_pro_max_sixtytwo_bloc.dart';
import 'models/iphone_11_pro_max_sixtytwo_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxSixtytwoScreen extends StatelessWidget {
  const Iphone11ProMaxSixtytwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSixtytwoBloc>(
      create: (context) =>
          Iphone11ProMaxSixtytwoBloc(Iphone11ProMaxSixtytwoState(
        iphone11ProMaxSixtytwoModelObj: Iphone11ProMaxSixtytwoModel(),
      ))
            ..add(Iphone11ProMaxSixtytwoInitialEvent()),
      child: Iphone11ProMaxSixtytwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxSixtytwoBloc, Iphone11ProMaxSixtytwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Opacity(
                opacity: 0.5,
                child: CustomImageView(
                  imagePath: ImageConstant.imgIphone11ProMax,
                  height: 818.v,
                  width: 414.h,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
