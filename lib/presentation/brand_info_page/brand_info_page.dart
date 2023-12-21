import '../brand_info_page/widgets/productcard4_item_widget.dart';
import 'bloc/brand_info_bloc.dart';
import 'models/brand_info_model.dart';
import 'models/productcard4_item_model.dart';
import 'package:drfarama/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BrandInfoPage extends StatefulWidget {
  const BrandInfoPage({Key? key})
      : super(
          key: key,
        );

  @override
  BrandInfoPageState createState() => BrandInfoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BrandInfoBloc>(
      create: (context) => BrandInfoBloc(BrandInfoState(
        brandInfoModelObj: BrandInfoModel(),
      ))
        ..add(BrandInfoInitialEvent()),
      child: BrandInfoPage(),
    );
  }
}

class BrandInfoPageState extends State<BrandInfoPage>
    with AutomaticKeepAliveClientMixin<BrandInfoPage> {
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
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.h),
                child: BlocSelector<BrandInfoBloc, BrandInfoState,
                    BrandInfoModel?>(
                  selector: (state) => state.brandInfoModelObj,
                  builder: (context, brandInfoModelObj) {
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
                          brandInfoModelObj?.productcard4ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Productcard4ItemModel model =
                            brandInfoModelObj?.productcard4ItemList[index] ??
                                Productcard4ItemModel();
                        return Productcard4ItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
