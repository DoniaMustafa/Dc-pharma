import 'bloc/brand_infotwo_eighteen_bloc.dart';import 'models/brand_infotwo_eighteen_model.dart';import 'package:drfarama/core/app_export.dart';import 'package:drfarama/core/utils/validation_functions.dart';import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';import 'package:drfarama/widgets/custom_elevated_button.dart';import 'package:drfarama/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class BrandInfotwoEighteenScreen extends StatelessWidget {BrandInfotwoEighteenScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<BrandInfotwoEighteenBloc>(create: (context) => BrandInfotwoEighteenBloc(BrandInfotwoEighteenState(brandInfotwoEighteenModelObj: BrandInfotwoEighteenModel()))..add(BrandInfotwoEighteenInitialEvent()), child: BrandInfotwoEighteenScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 20.v), child: Column(children: [BlocSelector<BrandInfotwoEighteenBloc, BrandInfotwoEighteenState, TextEditingController?>(selector: (state) => state.nameController, builder: (context, nameController) {return CustomTextFormField(controller: nameController, hintText: "msg_please_enter_a_service".tr, hintStyle: CustomTextStyles.bodySmallPoppinsGray700, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;}, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v));}), SizedBox(height: 26.v), BlocSelector<BrandInfotwoEighteenBloc, BrandInfotwoEighteenState, TextEditingController?>(selector: (state) => state.serviceDescriptionController, builder: (context, serviceDescriptionController) {return CustomTextFormField(controller: serviceDescriptionController, hintText: "msg_service_description".tr, hintStyle: CustomTextStyles.bodySmallPoppinsGray700, textInputAction: TextInputAction.done, maxLines: 5, contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 21.v));}), Spacer(), SizedBox(height: 41.v), _buildSendStack(context)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 34.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgGroup1Black90001, margin: EdgeInsets.only(left: 29.h, top: 22.v, bottom: 22.v), onTap: () {onTapImage(context);}), centerTitle: true, title: AppbarSubtitle(text: "msg_add_medical_services".tr)); } 
/// Section Widget
Widget _buildSendStack(BuildContext context) { return SizedBox(height: 80.v, width: 361.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topRight, child: Padding(padding: EdgeInsets.only(right: 77.h), child: Text("lbl_send".tr, style: CustomTextStyles.titleMediumWhiteA700))), CustomElevatedButton(height: 57.v, width: 361.h, text: "lbl_send".tr, buttonStyle: CustomButtonStyles.outlinePrimaryTL171, onPressed: () {onTapSend(context);}, alignment: Alignment.bottomCenter)])); } 
/// Navigates to the invoicethreeOneScreen when the action is triggered.
onTapImage(BuildContext context) { NavigatorService.pushNamed(AppRoutes.invoicethreeOneScreen, ); } 
/// Navigates to the brandInfotwoThreeScreen when the action is triggered.
onTapSend(BuildContext context) { NavigatorService.pushNamed(AppRoutes.brandInfotwoThreeScreen, ); } 
 }