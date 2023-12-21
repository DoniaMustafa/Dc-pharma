import 'bloc/brand_infotwo_five_bloc.dart';import 'models/brand_infotwo_five_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';import 'package:drfarama/widgets/custom_icon_button.dart';import 'package:flutter/material.dart';class BrandInfotwoFiveScreen extends StatelessWidget {const BrandInfotwoFiveScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<BrandInfotwoFiveBloc>(create: (context) => BrandInfotwoFiveBloc(BrandInfotwoFiveState(brandInfotwoFiveModelObj: BrandInfotwoFiveModel()))..add(BrandInfotwoFiveInitialEvent()), child: BrandInfotwoFiveScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<BrandInfotwoFiveBloc, BrandInfotwoFiveState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgGradient2, height: 200.v, width: 338.h, radius: BorderRadius.circular(12.h)), SizedBox(height: 37.v), Padding(padding: EdgeInsets.symmetric(horizontal: 55.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Column(children: [Text("lbl_about_us".tr, style: CustomTextStyles.titleMediumOutfitPrimary), SizedBox(height: 13.v), SizedBox(width: 69.h, child: Divider(color: theme.colorScheme.primary))]), GestureDetector(onTap: () {onTapTxtOurProducts(context);}, child: Padding(padding: EdgeInsets.only(bottom: 17.v), child: Text("lbl_our_products".tr, style: CustomTextStyles.titleMediumOutfit)))])), SizedBox(height: 32.v), _buildContactSection(context), SizedBox(height: 5.v)]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 22.v, bottom: 22.v)), centerTitle: true, title: AppbarSubtitle(text: "lbl_sanofi".tr)); } 
/// Section Widget
Widget _buildLocationSection(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v), decoration: AppDecoration.outlineGray8003f.copyWith(borderRadius: BorderRadiusStyle.roundedBorder7), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgTypcnLocationPrimary, height: 19.v, width: 18.h, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 2.h, top: 4.v), child: Text("lbl_our_location".tr, style: CustomTextStyles.bodySmallOutfitPrimary))])), SizedBox(height: 4.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 29.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(width: 207.h, margin: EdgeInsets.only(top: 4.v), child: Text("msg_ebad_alrhman_ahmed".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodySmallOutfitErrorContainer12)), Container(width: 38.h, margin: EdgeInsets.only(left: 62.h, bottom: 17.v), padding: EdgeInsets.all(3.h), decoration: AppDecoration.fillRed.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4), child: Text("lbl_30_km".tr, style: CustomTextStyles.bodySmallOutfitWhiteA700))]))), SizedBox(height: 8.v)]))); } 
/// Section Widget
Widget _buildContactSection(BuildContext context) { return Column(children: [Container(padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v), decoration: AppDecoration.outlineGray6003f01.copyWith(borderRadius: BorderRadiusStyle.roundedBorder20), child: Row(children: [Column(children: [CustomIconButton(height: 34.adaptSize, width: 34.adaptSize, padding: EdgeInsets.all(6.h), child: CustomImageView(imagePath: ImageConstant.imgBxlGmailWhiteA700)), SizedBox(height: 9.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 28.h), child: Text("lbl_our_gmail".tr, style: CustomTextStyles.bodySmallOutfitPrimary12))), SizedBox(height: 1.v), Text("msg_zara73_gmail_com".tr, style: CustomTextStyles.bodySmallOutfitErrorContainer)]), Spacer(flex: 42), SizedBox(height: 79.v, child: VerticalDivider(width: 1.h, thickness: 1.v, color: appTheme.gray50001, indent: 3.h, endIndent: 4.h)), Spacer(flex: 57), Padding(padding: EdgeInsets.only(right: 14.h), child: Column(children: [CustomIconButton(height: 34.adaptSize, width: 34.adaptSize, padding: EdgeInsets.all(5.h), child: CustomImageView(imagePath: ImageConstant.imgGroup23554)), SizedBox(height: 9.v), Text("lbl_call_us".tr, style: CustomTextStyles.bodySmallOutfitPrimary12), SizedBox(height: 1.v), Text("lbl_020949485783".tr, style: CustomTextStyles.bodySmallOutfitErrorContainer)]))])), SizedBox(height: 26.v), SizedBox(height: 183.v, width: 362.h, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgRectangle18558, height: 117.v, width: 362.h, radius: BorderRadius.circular(7.h), alignment: Alignment.topCenter), _buildLocationSection(context)]))]); } 
/// Navigates to the brandInfoTabContainerScreen when the action is triggered.
onTapTxtOurProducts(BuildContext context) { NavigatorService.pushNamed(AppRoutes.brandInfoTabContainerScreen, ); } 
 }