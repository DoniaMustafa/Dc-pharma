import 'bloc/brand_infotwo_four_tab_container_bloc.dart';import 'models/brand_infotwo_four_tab_container_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:drfarama/presentation/brand_infotwo_four_page/brand_infotwo_four_page.dart';import 'package:drfarama/presentation/brand_infotwo_nineteen_page/brand_infotwo_nineteen_page.dart';import 'package:drfarama/presentation/brand_infotwo_seven_page/brand_infotwo_seven_page.dart';import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';import 'package:flutter/material.dart';class BrandInfotwoFourTabContainerScreen extends StatefulWidget {const BrandInfotwoFourTabContainerScreen({Key? key}) : super(key: key);

@override BrandInfotwoFourTabContainerScreenState createState() =>  BrandInfotwoFourTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<BrandInfotwoFourTabContainerBloc>(create: (context) => BrandInfotwoFourTabContainerBloc(BrandInfotwoFourTabContainerState(brandInfotwoFourTabContainerModelObj: BrandInfotwoFourTabContainerModel()))..add(BrandInfotwoFourTabContainerInitialEvent()), child: BrandInfotwoFourTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class BrandInfotwoFourTabContainerScreenState extends State<BrandInfotwoFourTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 3, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<BrandInfotwoFourTabContainerBloc, BrandInfotwoFourTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 16.v), _buildTabview(context), SizedBox(height: 707.v, child: TabBarView(controller: tabviewController, children: [BrandInfotwoFourPage(), BrandInfotwoNineteenPage(), BrandInfotwoSevenPage()]))]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 20.v, bottom: 24.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_my_order".tr)); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 28.v, width: 345.h, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Outfit', fontWeight: FontWeight.w500), unselectedLabelColor: appTheme.black90001, unselectedLabelStyle: TextStyle(fontSize: 16.fSize, fontFamily: 'Outfit', fontWeight: FontWeight.w500), indicatorColor: theme.colorScheme.primary, tabs: [Tab(child: Text("lbl_requested".tr)), Tab(child: Text("lbl_completed".tr)), Tab(child: Text("lbl_cancelled".tr))])); } 
/// Navigates to the invoicethreeOneScreen when the action is triggered.
onTapImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.invoicethreeOneScreen, ); } 
 }
