// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productdetails_item_model.dart';/// This class defines the variables used in the [brand_infotwo_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoEightModel extends Equatable {BrandInfotwoEightModel({this.productdetailsItemList = const []}) {  }

List<ProductdetailsItemModel> productdetailsItemList;

BrandInfotwoEightModel copyWith({List<ProductdetailsItemModel>? productdetailsItemList}) { return BrandInfotwoEightModel(
productdetailsItemList : productdetailsItemList ?? this.productdetailsItemList,
); } 
@override List<Object?> get props => [productdetailsItemList];
 }
