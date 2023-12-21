import 'bloc/brand_infotwo_ten_bloc.dart';import 'models/brand_infotwo_ten_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:drfarama/core/utils/validation_functions.dart';import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';import 'package:drfarama/widgets/custom_elevated_button.dart';import 'package:drfarama/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class BrandInfotwoTenScreen extends StatelessWidget {BrandInfotwoTenScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<BrandInfotwoTenBloc>(create: (context) => BrandInfotwoTenBloc(BrandInfotwoTenState(brandInfotwoTenModelObj: BrandInfotwoTenModel()))..add(BrandInfotwoTenInitialEvent()), child: BrandInfotwoTenScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 17.v), child: Column(children: [BlocSelector<BrandInfotwoTenBloc, BrandInfotwoTenState, TextEditingController?>(selector: (state) => state.nameController, builder: (context, nameController) {return CustomTextFormField(controller: nameController, hintText: "msg_please_enter_a_service".tr, hintStyle: CustomTextStyles.bodySmallPoppinsGray700, textInputAction: TextInputAction.done, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v));}), Spacer(), SizedBox(height: 44.v), _buildNameSend(context)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 19.v, bottom: 25.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_return_requests".tr)); } 
/// Section Widget
Widget _buildNameSend(BuildContext context) { return SizedBox(height: 80.v, width: 361.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(right: 77.h), child: Text("lbl_send".tr, style: CustomTextStyles.titleMediumWhiteA700))), CustomElevatedButton(height: 57.v, width: 361.h, text: "lbl_send".tr, buttonStyle: CustomButtonStyles.outlinePrimaryTL171, onPressed: () {onTapSend(context);}, alignment: Alignment.bottomCenter)])); } 
/// Navigates to the invoicethreeOneScreen when the action is triggered.
onTapImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.invoicethreeOneScreen, ); } 
/// Navigates to the brandInfotwoThreeScreen when the action is triggered.
onTapSend(BuildContext context) { NavigatorService.pushNamed(AppRoutes.brandInfotwoThreeScreen, ); } 
 }
