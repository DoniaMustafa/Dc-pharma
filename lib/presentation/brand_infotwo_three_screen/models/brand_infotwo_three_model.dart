// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productlisting_item_model.dart';/// This class defines the variables used in the [brand_infotwo_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoThreeModel extends Equatable {BrandInfotwoThreeModel({this.productlistingItemList = const []}) {  }

List<ProductlistingItemModel> productlistingItemList;

BrandInfotwoThreeModel copyWith({List<ProductlistingItemModel>? productlistingItemList}) { return BrandInfotwoThreeModel(
productlistingItemList : productlistingItemList ?? this.productlistingItemList,
); } 
@override List<Object?> get props => [productlistingItemList];
 }
