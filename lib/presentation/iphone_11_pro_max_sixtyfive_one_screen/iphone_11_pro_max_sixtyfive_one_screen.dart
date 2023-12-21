import 'bloc/iphone_11_pro_max_sixtyfive_one_bloc.dart';
import 'models/iphone_11_pro_max_sixtyfive_one_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

class Iphone11ProMaxSixtyfiveOneScreen extends StatelessWidget {
  const Iphone11ProMaxSixtyfiveOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxSixtyfiveOneBloc>(
      create: (context) =>
          Iphone11ProMaxSixtyfiveOneBloc(Iphone11ProMaxSixtyfiveOneState(
        iphone11ProMaxSixtyfiveOneModelObj: Iphone11ProMaxSixtyfiveOneModel(),
      ))
            ..add(Iphone11ProMaxSixtyfiveOneInitialEvent()),
      child: Iphone11ProMaxSixtyfiveOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<Iphone11ProMaxSixtyfiveOneBloc,
        Iphone11ProMaxSixtyfiveOneState>(
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
