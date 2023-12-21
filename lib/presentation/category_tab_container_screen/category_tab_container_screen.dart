import 'bloc/category_tab_container_bloc.dart';
import 'models/category_tab_container_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/presentation/category_brand_page/category_brand_page.dart';
import 'package:drfarama/presentation/category_page/category_page.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:drfarama/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:drfarama/widgets/custom_bottom_bar.dart';
import 'package:drfarama/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class CategoryTabContainerScreen extends StatefulWidget {
  const CategoryTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CategoryTabContainerScreenState createState() =>
      CategoryTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CategoryTabContainerBloc>(
      create: (context) => CategoryTabContainerBloc(CategoryTabContainerState(
        categoryTabContainerModelObj: CategoryTabContainerModel(),
      ))
        ..add(CategoryTabContainerInitialEvent()),
      child: CategoryTabContainerScreen(),
    );
  }
}

class CategoryTabContainerScreenState extends State<CategoryTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 29.h,
                  right: 15.h,
                ),
                child: BlocSelector<CategoryTabContainerBloc,
                    CategoryTabContainerState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_search_here".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 19.v),
              Container(
                height: 38.v,
                width: 233.h,
                margin: EdgeInsets.only(left: 80.h),
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary,
                  labelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w500,
                  ),
                  unselectedLabelColor: appTheme.black90001,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 16.fSize,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w500,
                  ),
                  indicatorColor: theme.colorScheme.primary,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_category".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_brands".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 518.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    CategoryPage(),
                    CategoryBrandPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 82.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgRectangle18623,
        margin: EdgeInsets.only(
          left: 31.h,
          top: 2.v,
          bottom: 2.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(
          children: [
            AppbarSubtitleSeven(
              text: "lbl_a_z_pharmacy".tr,
            ),
            AppbarSubtitleSix(
              text: "lbl_egypt2".tr,
              margin: EdgeInsets.only(right: 65.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.img8134640GiftBi,
          margin: EdgeInsets.fromLTRB(16.h, 2.v, 16.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
