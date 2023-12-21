import 'bloc/profile_two_bloc.dart';import 'models/profile_two_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';import 'package:drfarama/widgets/custom_elevated_button.dart';import 'package:drfarama/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';import 'package:drfarama/presentation/profile_one_bottomsheet/profile_one_bottomsheet.dart';import 'package:drfarama/presentation/chagne_country_bottomsheet/chagne_country_bottomsheet.dart';class ProfileTwoScreen extends StatelessWidget {const ProfileTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ProfileTwoBloc>(create: (context) => ProfileTwoBloc(ProfileTwoState(profileTwoModelObj: ProfileTwoModel()))..add(ProfileTwoInitialEvent()), child: ProfileTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<ProfileTwoBloc, ProfileTwoState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), child: Column(children: [_buildBdRow(context), SizedBox(height: 24.v), _buildUserColumn(context), SizedBox(height: 35.v), _buildMoreColumn(context), SizedBox(height: 5.v)]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 19.v, bottom: 25.v)), centerTitle: true, title: AppbarSubtitle(text: "lbl_settings".tr)); } 
/// Section Widget
Widget _buildBdRow(BuildContext context) { return GestureDetector(onTap: () {onTapBdRow(context);}, child: Container(margin: EdgeInsets.only(right: 3.h), padding: EdgeInsets.all(17.h), decoration: AppDecoration.outlineBlack900011.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Row(children: [SizedBox(height: 62.adaptSize, width: 62.adaptSize, child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgEllipse643, height: 62.adaptSize, width: 62.adaptSize, radius: BorderRadius.circular(31.h), alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgLockOnprimary, height: 44.v, width: 35.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 8.v)), CustomElevatedButton(height: 58.v, width: 58.h, text: "lbl_bd".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL29, buttonTextStyle: CustomTextStyles.titleLargeUrbanist23, alignment: Alignment.center)])), Padding(padding: EdgeInsets.only(left: 12.h, top: 12.v, bottom: 9.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_itunuoluwa_abidoye".tr, style: CustomTextStyles.titleMediumDMSansWhiteA700), Text("lbl_itunuoluwa".tr, style: CustomTextStyles.bodyMediumDMSansBluegray100)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgIcOutlineModeEditOutline, height: 26.adaptSize, width: 26.adaptSize, margin: EdgeInsets.only(top: 10.v, right: 8.h, bottom: 25.v))]))); } 
/// Section Widget
Widget _buildUserColumn(BuildContext context) { return Container(margin: EdgeInsets.only(right: 3.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 28.v), decoration: AppDecoration.outlineBlack900012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapUser(context);}, child: Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 43.adaptSize, width: 43.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillGrayTL21, child: CustomImageView(imagePath: ImageConstant.imgUserPrimary43x43)), CustomImageView(imagePath: ImageConstant.imgGroup12335, height: 36.v, width: 184.h, margin: EdgeInsets.only(left: 18.h, top: 5.v, bottom: 2.v)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 12.v, width: 7.h, margin: EdgeInsets.symmetric(vertical: 15.v))]))), SizedBox(height: 27.v), GestureDetector(onTap: () {onTapUilLanguage(context);}, child: Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 43.adaptSize, width: 43.adaptSize, padding: EdgeInsets.all(9.h), decoration: IconButtonStyleHelper.fillGrayTL21, child: CustomImageView(imagePath: ImageConstant.imgUilLanguage)), CustomImageView(imagePath: ImageConstant.imgGroup12335Primarycontainer, height: 35.v, width: 240.h, margin: EdgeInsets.only(left: 18.h, top: 6.v, bottom: 2.v)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 12.v, width: 7.h, margin: EdgeInsets.symmetric(vertical: 15.v))]))), SizedBox(height: 28.v), Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [CustomIconButton(height: 43.adaptSize, width: 43.adaptSize, padding: EdgeInsets.all(11.h), decoration: IconButtonStyleHelper.fillGrayTL21, child: CustomImageView(imagePath: ImageConstant.img9035092WalletIcon)), Expanded(child: Padding(padding: EdgeInsets.only(left: 17.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_deferred_payment".tr, style: CustomTextStyles.titleSmallDMSansBlack90001), SizedBox(height: 5.v), CustomImageView(imagePath: ImageConstant.imgChangeTheLanguage, height: 12.v, width: 240.h)]))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 12.v, width: 7.h, margin: EdgeInsets.only(top: 12.v, bottom: 18.v))])), SizedBox(height: 27.v), GestureDetector(onTap: () {onTapSpacer(context);}, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 43.adaptSize, width: 43.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillGrayTL21, child: CustomImageView(imagePath: ImageConstant.imgGroup12334)), CustomImageView(imagePath: ImageConstant.imgGroup12335Primarycontainer35x157, height: 35.v, width: 157.h, margin: EdgeInsets.only(left: 18.h, top: 4.v, bottom: 3.v)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 12.v, width: 7.h, margin: EdgeInsets.symmetric(vertical: 15.v))]))])); } 
/// Section Widget
Widget _buildMoreColumn(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 3.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Opacity(opacity: 0.8, child: Text("lbl_more2".tr, style: CustomTextStyles.titleSmallDMSansPrimaryContainerMedium)), SizedBox(height: 5.v), Container(padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 19.v), decoration: AppDecoration.outlineBlack900012.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, children: [Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 43.adaptSize, width: 43.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillOnPrimary, child: CustomImageView(imagePath: ImageConstant.imgFavoritePrimary)), Padding(padding: EdgeInsets.only(left: 17.h, top: 12.v, bottom: 11.v), child: Text("lbl_about_app".tr, style: CustomTextStyles.titleSmallDMSansPrimaryContainer)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 12.v, width: 7.h, margin: EdgeInsets.symmetric(vertical: 15.v))]), SizedBox(height: 27.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 43.adaptSize, width: 43.adaptSize, padding: EdgeInsets.all(10.h), decoration: IconButtonStyleHelper.fillGrayTL211, child: CustomImageView(imagePath: ImageConstant.imgClockOnprimary)), Padding(padding: EdgeInsets.only(left: 17.h, top: 2.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_log_out".tr, style: CustomTextStyles.titleSmallDMSansGray70001), SizedBox(height: 6.v), Text("msg_further_secure_your".tr, style: CustomTextStyles.bodySmallDMSansOnPrimaryContainer)])), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 12.v, width: 7.h, margin: EdgeInsets.symmetric(vertical: 15.v))]), SizedBox(height: 8.v)]))])); } 
/// Navigates to the profileInfoOneScreen when the action is triggered.
onTapBdRow(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileInfoOneScreen, ); } 
/// Navigates to the profileInfoScreen when the action is triggered.
onTapUser(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileInfoScreen, ); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [ProfileOneBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapUilLanguage(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ProfileOneBottomsheet.builder(context),isScrollControlled: true); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [ChagneCountryBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapSpacer(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>ChagneCountryBottomsheet.builder(context),isScrollControlled: true); } 
 }
