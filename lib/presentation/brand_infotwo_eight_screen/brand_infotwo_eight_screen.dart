import '../brand_infotwo_eight_screen/widgets/productdetails_item_widget.dart';import 'bloc/brand_infotwo_eight_bloc.dart';import 'models/brand_infotwo_eight_model.dart';import 'models/productdetails_item_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';import 'package:drfarama/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class BrandInfotwoEightScreen extends StatelessWidget {const BrandInfotwoEightScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<BrandInfotwoEightBloc>(create: (context) => BrandInfotwoEightBloc(BrandInfotwoEightState(brandInfotwoEightModelObj: BrandInfotwoEightModel()))..add(BrandInfotwoEightInitialEvent()), child: BrandInfotwoEightScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v), child: Column(children: [_buildProductDetails(context), SizedBox(height: 317.v), CustomElevatedButton(height: 56.v, width: 210.h, text: "lbl_new_product".tr, rightIcon: Container(margin: EdgeInsets.only(left: 30.h), child: CustomImageView(imagePath: ImageConstant.imgArrowLeftWhiteA700, height: 15.adaptSize, width: 15.adaptSize)), buttonStyle: CustomButtonStyles.outlinePrimaryTL171, onPressed: () {onTapNewProduct(context);}, alignment: Alignment.centerRight), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 20.v, bottom: 24.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarSubtitle(text: "msg_expired_products".tr)); } 
/// Section Widget
Widget _buildProductDetails(BuildContext context) { return SizedBox(height: 261.v, child: BlocSelector<BrandInfotwoEightBloc, BrandInfotwoEightState, BrandInfotwoEightModel?>(selector: (state) => state.brandInfotwoEightModelObj, builder: (context, brandInfotwoEightModelObj) {return ListView.separated(padding: EdgeInsets.only(left: 6.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 20.h);}, itemCount: brandInfotwoEightModelObj?.productdetailsItemList.length ?? 0, itemBuilder: (context, index) {ProductdetailsItemModel model = brandInfotwoEightModelObj?.productdetailsItemList[index] ?? ProductdetailsItemModel(); return ProductdetailsItemWidget(model);});})); } 
/// Navigates to the invoicethreeOneScreen when the action is triggered.
onTapImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.invoicethreeOneScreen, ); } 
/// Navigates to the brandInfotwoSixteenScreen when the action is triggered.
onTapNewProduct(BuildContext context) { NavigatorService.pushNamed(AppRoutes.brandInfotwoSixteenScreen, ); } 
 }