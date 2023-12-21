// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlistlist_item_model.dart';/// This class defines the variables used in the [brand_infotwo_thirteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoThirteenModel extends Equatable {BrandInfotwoThirteenModel({this.productlistlistItemList = const []}) {  }

List<ProductlistlistItemModel> productlistlistItemList;

BrandInfotwoThirteenModel copyWith({List<ProductlistlistItemModel>? productlistlistItemList}) { return BrandInfotwoThirteenModel(
productlistlistItemList : productlistlistItemList ?? this.productlistlistItemList,
); } 
@override List<Object?> get props => [productlistlistItemList];
 }
