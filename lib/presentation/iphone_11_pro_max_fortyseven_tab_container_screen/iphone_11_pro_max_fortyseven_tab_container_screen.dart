import '../iphone_11_pro_max_fortyseven_tab_container_screen/widgets/gradient_item_widget.dart';
import 'bloc/iphone_11_pro_max_fortyseven_tab_container_bloc.dart';
import 'models/gradient_item_model.dart';
import 'models/iphone_11_pro_max_fortyseven_tab_container_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:drfarama/presentation/iphone_11_pro_max_fortyseven_page/iphone_11_pro_max_fortyseven_page.dart';
import 'package:drfarama/widgets/app_bar/appbar_leading_image.dart';
import 'package:drfarama/widgets/app_bar/appbar_subtitle.dart';
import 'package:drfarama/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Iphone11ProMaxFortysevenTabContainerScreen extends StatefulWidget {
  const Iphone11ProMaxFortysevenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxFortysevenTabContainerScreenState createState() =>
      Iphone11ProMaxFortysevenTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxFortysevenTabContainerBloc>(
      create: (context) => Iphone11ProMaxFortysevenTabContainerBloc(
          Iphone11ProMaxFortysevenTabContainerState(
        iphone11ProMaxFortysevenTabContainerModelObj:
            Iphone11ProMaxFortysevenTabContainerModel(),
      ))
        ..add(Iphone11ProMaxFortysevenTabContainerInitialEvent()),
      child: Iphone11ProMaxFortysevenTabContainerScreen(),
    );
  }
}

class Iphone11ProMaxFortysevenTabContainerScreenState
    extends State<Iphone11ProMaxFortysevenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 13.v),
            child: Column(
              children: [
                _buildGradientSlider(context),
                SizedBox(height: 26.v),
                _buildTabview(context),
                SizedBox(
                  height: 464.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      Iphone11ProMaxFortysevenPage(),
                      Iphone11ProMaxFortysevenPage(),
                      Iphone11ProMaxFortysevenPage(),
                      Iphone11ProMaxFortysevenPage(),
                      Iphone11ProMaxFortysevenPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroup1Black90001,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 20.v,
          bottom: 24.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_beauty_tools2".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildGradientSlider(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 36.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: BlocBuilder<Iphone11ProMaxFortysevenTabContainerBloc,
                Iphone11ProMaxFortysevenTabContainerState>(
              builder: (context, state) {
                return CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 200.v,
                    initialPage: 0,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (
                      index,
                      reason,
                    ) {
                      state.sliderIndex = index;
                    },
                  ),
                  itemCount: state.iphone11ProMaxFortysevenTabContainerModelObj
                          ?.gradientItemList.length ??
                      0,
                  itemBuilder: (context, index, realIndex) {
                    GradientItemModel model = state
                            .iphone11ProMaxFortysevenTabContainerModelObj
                            ?.gradientItemList[index] ??
                        GradientItemModel();
                    return GradientItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 14.v),
          BlocBuilder<Iphone11ProMaxFortysevenTabContainerBloc,
              Iphone11ProMaxFortysevenTabContainerState>(
            builder: (context, state) {
              return Container(
                height: 7.v,
                margin: EdgeInsets.only(left: 123.h),
                child: AnimatedSmoothIndicator(
                  activeIndex: state.sliderIndex,
                  count: state.iphone11ProMaxFortysevenTabContainerModelObj
                          ?.gradientItemList.length ??
                      0,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 4,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: theme.colorScheme.primary.withOpacity(0.49),
                    dotHeight: 4.v,
                    dotWidth: 6.h,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 27.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray50001,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_all".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_makeup".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_skin_care".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_hair_care".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_smells".tr,
            ),
          ),
        ],
      ),
    );
  }
}
