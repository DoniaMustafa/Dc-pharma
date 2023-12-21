import 'bloc/category_bloc.dart';
import 'models/category_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  CategoryPageState createState() => CategoryPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryBloc>(
        create: (context) =>
            CategoryBloc(CategoryState(categoryModelObj: CategoryModel()))..add(CategoryInitialEvent()),
        child: CategoryPage());
  }
}

class CategoryPageState extends State<CategoryPage> with AutomaticKeepAliveClientMixin<CategoryPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillWhiteA,
                  child: Column(children: [SizedBox(height: 41.v), _buildDrugsMColumn(context)]))));
    });
  }

  /// Section Widget
  Widget _buildDrugsMColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 41.h, right: 22.h),
        child: Column(children: [
          _buildDrugsMRow(context,
              medicines: "lbl_medicines".tr,
              itemsCounter: "lbl_601_items".tr,
              medicalSupplies: "msg_medical_supplies".tr,
              itemsCounter1: "lbl_601_items".tr,
              beautyTools: "lbl_beauty_tools".tr,
              itemsCounter2: "lbl_601_items".tr, onTapMerk: () {
            onTapMerk(context);
          }),
          SizedBox(height: 33.v),
          _buildDrugsMRow(context,
              medicines: "lbl_medicines".tr,
              itemsCounter: "lbl_601_items".tr,
              medicalSupplies: "msg_medical_supplies".tr,
              itemsCounter1: "lbl_601_items".tr,
              beautyTools: "lbl_beauty_tools".tr,
              itemsCounter2: "lbl_601_items".tr)
        ]));
  }

  /// Common widget
  Widget _buildDrugsMRow(
    BuildContext context, {
    required String medicines,
    required String itemsCounter,
    required String medicalSupplies,
    required String itemsCounter1,
    required String beautyTools,
    required String itemsCounter2,
    Function? onTapMerk,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      GestureDetector(
          onTap: () {
            onTapMerk!.call();
          },
          child: Column(children: [
            CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(10.h),
                decoration: IconButtonStyleHelper.fillGrayTL25,
                child: CustomImageView(imagePath: ImageConstant.img3668843DrugsM)),
            SizedBox(height: 13.v),
            Text(medicines, style: CustomTextStyles.titleSmallGray90001_1.copyWith(color: appTheme.gray90001)),
            SizedBox(height: 2.v),
            Text(itemsCounter,
                style: CustomTextStyles.bodySmallGray90001.copyWith(color: appTheme.gray90001.withOpacity(0.3)))
          ])),
      GestureDetector(
          onTap: () {
            onTapMerk!.call();
          },
          child: Column(children: [
            CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.fillGrayTL25,
                child: CustomImageView(imagePath: ImageConstant.img10218895Stetho)),
            SizedBox(height: 15.v),
            Text(medicalSupplies, style: CustomTextStyles.titleSmallGray90001_1.copyWith(color: appTheme.gray90001)),
            SizedBox(height: 1.v),
            Text(itemsCounter1,
                style: CustomTextStyles.bodySmallGray90001.copyWith(color: appTheme.gray90001.withOpacity(0.3)))
          ])),
      Column(children: [
        CustomIconButton(
            height: 50.adaptSize,
            width: 50.adaptSize,
            padding: EdgeInsets.all(13.h),
            decoration: IconButtonStyleHelper.fillGrayTL25,
            child: CustomImageView(imagePath: ImageConstant.img753936NailsSa)),
        SizedBox(height: 15.v),
        Text(beautyTools, style: CustomTextStyles.titleSmallGray90001_1.copyWith(color: appTheme.gray90001)),
        SizedBox(height: 1.v),
        Text(itemsCounter2,
            style: CustomTextStyles.bodySmallGray90001.copyWith(color: appTheme.gray90001.withOpacity(0.3)))
      ])
    ]);
  }

  /// Navigates to the categoryInfoTwoScreen when the action is triggered.
  onTapMerk(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryInfoTwoScreen,
    );
  }

  /// Navigates to the categoryInfoTwoScreen when the action is triggered.
  onTapMerk1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categoryInfoTwoScreen,
    );
  }
}
