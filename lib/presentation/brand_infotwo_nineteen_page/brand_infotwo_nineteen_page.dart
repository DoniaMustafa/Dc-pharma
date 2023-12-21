import '../brand_infotwo_nineteen_page/widgets/orderdetailslist1_item_widget.dart';import 'bloc/brand_infotwo_nineteen_bloc.dart';import 'models/brand_infotwo_nineteen_model.dart';import 'models/orderdetailslist1_item_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:flutter/material.dart';class BrandInfotwoNineteenPage extends StatefulWidget {const BrandInfotwoNineteenPage({Key? key}) : super(key: key);

@override BrandInfotwoNineteenPageState createState() =>  BrandInfotwoNineteenPageState();

static Widget builder(BuildContext context) { return BlocProvider<BrandInfotwoNineteenBloc>(create: (context) => BrandInfotwoNineteenBloc(BrandInfotwoNineteenState(brandInfotwoNineteenModelObj: BrandInfotwoNineteenModel()))..add(BrandInfotwoNineteenInitialEvent()), child: BrandInfotwoNineteenPage()); } 
 }
class BrandInfotwoNineteenPageState extends State<BrandInfotwoNineteenPage> with  AutomaticKeepAliveClientMixin<BrandInfotwoNineteenPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 41.v), _buildOrderDetailsList(context)])))); } 
/// Section Widget
Widget _buildOrderDetailsList(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: BlocSelector<BrandInfotwoNineteenBloc, BrandInfotwoNineteenState, BrandInfotwoNineteenModel?>(selector: (state) => state.brandInfotwoNineteenModelObj, builder: (context, brandInfotwoNineteenModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 30.v);}, itemCount: brandInfotwoNineteenModelObj?.orderdetailslist1ItemList.length ?? 0, itemBuilder: (context, index) {Orderdetailslist1ItemModel model = brandInfotwoNineteenModelObj?.orderdetailslist1ItemList[index] ?? Orderdetailslist1ItemModel(); return Orderdetailslist1ItemWidget(model, onTapOrderDetails: () {onTapOrderDetails(context);});});})); } 
/// Navigates to the brandInfotwoNineScreen when the action is triggered.
onTapOrderDetails(BuildContext context) { NavigatorService.pushNamed(AppRoutes.brandInfotwoNineScreen, ); } 
 }
