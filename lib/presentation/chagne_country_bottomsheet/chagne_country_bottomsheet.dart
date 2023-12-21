import '../chagne_country_bottomsheet/widgets/countryselectionlist_item_widget.dart';
import 'bloc/chagne_country_bloc.dart';
import 'models/chagne_country_model.dart';
import 'models/countryselectionlist_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ChagneCountryBottomsheet extends StatelessWidget {
  const ChagneCountryBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChagneCountryBloc>(
      create: (context) => ChagneCountryBloc(ChagneCountryState(
        chagneCountryModelObj: ChagneCountryModel(),
      ))
        ..add(ChagneCountryInitialEvent()),
      child: ChagneCountryBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 39.h,
          vertical: 24.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 7.v,
              width: 114.h,
              decoration: BoxDecoration(
                color: appTheme.gray5005e,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
            ),
            SizedBox(height: 14.v),
            Text(
              "msg_select_your_country".tr,
              style: CustomTextStyles.titleSmallPoppinsBlack90001_1,
            ),
            SizedBox(height: 27.v),
            _buildCountrySelectionList(context),
            SizedBox(height: 27.v),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCountrySelectionList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<ChagneCountryBloc, ChagneCountryState,
          ChagneCountryModel?>(
        selector: (state) => state.chagneCountryModelObj,
        builder: (context, chagneCountryModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 14.v,
              );
            },
            itemCount:
                chagneCountryModelObj?.countryselectionlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              CountryselectionlistItemModel model =
                  chagneCountryModelObj?.countryselectionlistItemList[index] ??
                      CountryselectionlistItemModel();
              return CountryselectionlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
