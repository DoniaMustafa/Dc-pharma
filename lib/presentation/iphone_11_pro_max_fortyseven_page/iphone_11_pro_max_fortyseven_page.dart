import '../iphone_11_pro_max_fortyseven_page/widgets/section_item_widget.dart';
import 'bloc/iphone_11_pro_max_fortyseven_bloc.dart';
import 'models/iphone_11_pro_max_fortyseven_model.dart';
import 'models/section_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone11ProMaxFortysevenPage extends StatefulWidget {
  const Iphone11ProMaxFortysevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone11ProMaxFortysevenPageState createState() =>
      Iphone11ProMaxFortysevenPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone11ProMaxFortysevenBloc>(
      create: (context) =>
          Iphone11ProMaxFortysevenBloc(Iphone11ProMaxFortysevenState(
        iphone11ProMaxFortysevenModelObj: Iphone11ProMaxFortysevenModel(),
      ))
            ..add(Iphone11ProMaxFortysevenInitialEvent()),
      child: Iphone11ProMaxFortysevenPage(),
    );
  }
}

class Iphone11ProMaxFortysevenPageState
    extends State<Iphone11ProMaxFortysevenPage>
    with AutomaticKeepAliveClientMixin<Iphone11ProMaxFortysevenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              _buildSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 26.h,
      ),
      child: BlocSelector<Iphone11ProMaxFortysevenBloc,
          Iphone11ProMaxFortysevenState, Iphone11ProMaxFortysevenModel?>(
        selector: (state) => state.iphone11ProMaxFortysevenModelObj,
        builder: (context, iphone11ProMaxFortysevenModelObj) {
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
                iphone11ProMaxFortysevenModelObj?.sectionItemList.length ?? 0,
            itemBuilder: (context, index) {
              SectionItemModel model =
                  iphone11ProMaxFortysevenModelObj?.sectionItemList[index] ??
                      SectionItemModel();
              return SectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
