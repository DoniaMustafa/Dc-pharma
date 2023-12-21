import 'bloc/brand_info_tab_container_bloc.dart';import 'models/brand_info_tab_container_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:drfarama/presentation/brand_info_page/brand_info_page.dart';import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class BrandInfoTabContainerScreen extends StatefulWidget {const BrandInfoTabContainerScreen({Key? key}) : super(key: key);

@override BrandInfoTabContainerScreenState createState() =>  BrandInfoTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<BrandInfoTabContainerBloc>(create: (context) => BrandInfoTabContainerBloc(BrandInfoTabContainerState(brandInfoTabContainerModelObj: BrandInfoTabContainerModel()))..add(BrandInfoTabContainerInitialEvent()), child: BrandInfoTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class BrandInfoTabContainerScreenState extends State<BrandInfoTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 4, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<BrandInfoTabContainerBloc, BrandInfoTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 15.v), child: Column(children: [_buildGradient(context), SizedBox(height: 37.v), GestureDetector(onTap: () {onTapAboutUs(context);}, child: Padding(padding: EdgeInsets.symmetric(horizontal: 78.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 9.v), child: Text("lbl_about_us".tr, style: CustomTextStyles.titleMediumOutfit)), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_our_products".tr, style: CustomTextStyles.titleMediumOutfitPrimary), SizedBox(height: 5.v), Align(alignment: Alignment.center, child: SizedBox(width: 98.h, child: Divider(color: theme.colorScheme.primary)))])]))), SizedBox(height: 28.v), _buildTabview(context), _buildTabBarView(context)])))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 22.v, bottom: 22.v)), centerTitle: true, title: AppbarSubtitle(text: "lbl_sanofi".tr)); } 
/// Section Widget
Widget _buildGradient(BuildContext context) { return CustomImageView(imagePath: ImageConstant.imgGradient2, height: 200.v, width: 338.h, radius: BorderRadius.circular(12.h)); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 27.v, width: double.maxFinite, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w700), unselectedLabelColor: appTheme.gray50001, unselectedLabelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Poppins', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_all".tr)), Tab(child: Text("lbl_new".tr)), Tab(child: Text("lbl_most_popular".tr)), Tab(child: Text("lbl_best_offer".tr))])); } 
/// Section Widget
Widget _buildTabBarView(BuildContext context) { return SizedBox(height: 415.v, child: TabBarView(controller: tabviewController, children: [BrandInfoPage(), BrandInfoPage(), BrandInfoPage(), BrandInfoPage()])); } 
/// Navigates to the brandInfotwoFiveScreen when the action is triggered.
onTapAboutUs(BuildContext context) { NavigatorService.pushNamed(AppRoutes.brandInfotwoFiveScreen, ); } 
 }
