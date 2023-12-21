import 'bloc/country_bloc.dart';
import 'models/country_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/core/utils/validation_functions.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:drfarama/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CountryScreen extends StatelessWidget {
  CountryScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CountryBloc>(
      create: (context) => CountryBloc(CountryState(
        countryModelObj: CountryModel(),
      ))
        ..add(CountryInitialEvent()),
      child: CountryScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 818.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 40.h,
                          top: 36.v,
                          right: 36.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: 182.h,
                                child: Text(
                                  "msg_create_an_account".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.displaySmall!.copyWith(
                                    height: 1.19,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 24.v),
                            _buildPhoneEditText(context),
                            SizedBox(height: 24.v),
                            _buildEmailEditText(context),
                            SizedBox(height: 24.v),
                            _buildPasswordEditText(context),
                            SizedBox(height: 24.v),
                            _buildConfirmpasswordEditText(context),
                            SizedBox(height: 159.v),
                            _buildContinueRow(context),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 818.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle18600,
                              height: 603.v,
                              width: 413.h,
                              alignment: Alignment.topCenter,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 39.h,
                                  vertical: 24.v,
                                ),
                                decoration: AppDecoration.outlineGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 7.v,
                                      width: 114.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.gray5005e,
                                        borderRadius: BorderRadius.circular(
                                          3.h,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 14.v),
                                    Text(
                                      "msg_select_your_country".tr,
                                      style: CustomTextStyles
                                          .titleSmallAlmaraiBlack90001_1,
                                    ),
                                    SizedBox(height: 32.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSaudiArabiaTwoRow(
                                        context,
                                        image: ImageConstant.imgSaudiArabia1,
                                        text: "lbl_saudi_arabia".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSaudiArabiaTwoRow(
                                        context,
                                        image: ImageConstant.imgSaudiArabia2,
                                        text: "lbl_palestine".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSaudiArabiaTwoRow(
                                        context,
                                        image: ImageConstant.imgSaudiArabia3,
                                        text: "lbl_egypt".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 1.h),
                                      child: _buildSaudiArabiaTwoRow(
                                        context,
                                        image: ImageConstant.imgSaudiArabia4,
                                        text: "lbl_bahrain".tr,
                                      ),
                                    ),
                                    SizedBox(height: 14.v),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneEditText(BuildContext context) {
    return BlocSelector<CountryBloc, CountryState, TextEditingController?>(
      selector: (state) => state.phoneEditTextController,
      builder: (context, phoneEditTextController) {
        return CustomTextFormField(
          controller: phoneEditTextController,
          hintText: "lbl_phone".tr,
          hintStyle: CustomTextStyles.bodyMediumGray700,
          textInputType: TextInputType.phone,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(18.h, 16.v, 6.h, 18.v),
            child: CustomImageView(
              imagePath:
                  ImageConstant.img1564515calldevicemobilephonesmartphoneicon1,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 58.v,
          ),
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return BlocSelector<CountryBloc, CountryState, TextEditingController?>(
      selector: (state) => state.emailEditTextController,
      builder: (context, emailEditTextController) {
        return CustomTextFormField(
          controller: emailEditTextController,
          hintText: "lbl_email".tr,
          hintStyle: CustomTextStyles.bodyMediumGray700,
          textInputType: TextInputType.emailAddress,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(17.h, 16.v, 5.h, 16.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgUserGray500,
              height: 25.adaptSize,
              width: 25.adaptSize,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 58.v,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.passwordEditTextController,
          hintText: "lbl_password".tr,
          hintStyle: CustomTextStyles.bodyMediumAlmaraiGray700,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(21.h, 18.v, 9.h, 18.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocationGray500,
              height: 21.v,
              width: 16.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 58.v,
          ),
          suffix: InkWell(
            onTap: () {
              context.read<CountryBloc>().add(
                  ChangePasswordVisibilityEvent(value: !state.isShowPassword));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 18.v, 11.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEyeGray500,
                height: 21.adaptSize,
                width: 21.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 58.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword,
          contentPadding: EdgeInsets.symmetric(vertical: 21.v),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildConfirmpasswordEditText(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.confirmpasswordEditTextController,
          hintText: "msg_confirm_password".tr,
          hintStyle: CustomTextStyles.bodyMediumAlmaraiGray700,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
            margin: EdgeInsets.fromLTRB(21.h, 18.v, 10.h, 18.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 21.v,
              width: 16.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 58.v,
          ),
          suffix: InkWell(
            onTap: () {
              context.read<CountryBloc>().add(ChangePasswordVisibilityEvent1(
                  value: !state.isShowPassword1));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 18.v, 11.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 21.adaptSize,
                width: 21.adaptSize,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 58.v,
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: state.isShowPassword1,
          contentPadding: EdgeInsets.symmetric(vertical: 21.v),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildContinueRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 8.v,
          ),
          child: Text(
            "lbl_continue".tr,
            style: theme.textTheme.headlineMedium,
          ),
        ),
        CustomIconButton(
          height: 55.adaptSize,
          width: 55.adaptSize,
          padding: EdgeInsets.all(19.h),
          decoration: IconButtonStyleHelper.outlinePrimary,
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowLeft,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSaudiArabiaTwoRow(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: image,
            height: 23.adaptSize,
            width: 23.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Text(
              text,
              style: CustomTextStyles.bodyMediumJFFlat.copyWith(
                color: appTheme.black90001,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
