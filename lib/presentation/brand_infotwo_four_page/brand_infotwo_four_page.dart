import '../brand_infotwo_four_page/widgets/orderdetailslist_item_widget.dart';import 'bloc/brand_infotwo_four_bloc.dart';import 'models/brand_infotwo_four_model.dart';import 'models/orderdetailslist_item_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:flutter/material.dart';class BrandInfotwoFourPage extends StatefulWidget {const BrandInfotwoFourPage({Key? key}) : super(key: key);

@override BrandInfotwoFourPageState createState() =>  BrandInfotwoFourPageState();

static Widget builder(BuildContext context) { return BlocProvider<BrandInfotwoFourBloc>(create: (context) => BrandInfotwoFourBloc(BrandInfotwoFourState(brandInfotwoFourModelObj: BrandInfotwoFourModel()))..add(BrandInfotwoFourInitialEvent()), child: BrandInfotwoFourPage()); } 
 }
class BrandInfotwoFourPageState extends State<BrandInfotwoFourPage> with  AutomaticKeepAliveClientMixin<BrandInfotwoFourPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 41.v), _buildOrderDetailsList(context)])))); } 
/// Section Widget
Widget _buildOrderDetailsList(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: BlocSelector<BrandInfotwoFourBloc, BrandInfotwoFourState, BrandInfotwoFourModel?>(selector: (state) => state.brandInfotwoFourModelObj, builder: (context, brandInfotwoFourModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 30.v);}, itemCount: brandInfotwoFourModelObj?.orderdetailslistItemList.length ?? 0, itemBuilder: (context, index) {OrderdetailslistItemModel model = brandInfotwoFourModelObj?.orderdetailslistItemList[index] ?? OrderdetailslistItemModel(); return OrderdetailslistItemWidget(model, onTapOrderDetails: () {onTapOrderDetails(context);});});})); } 
/// Navigates to the brandInfotwoThirteenScreen when the action is triggered.
onTapOrderDetails(BuildContext context) { NavigatorService.pushNamed(AppRoutes.brandInfotwoThirteenScreen, ); } 
 }
