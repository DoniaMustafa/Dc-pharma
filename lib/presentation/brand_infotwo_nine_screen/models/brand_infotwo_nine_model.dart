// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcardlist3_item_model.dart';/// This class defines the variables used in the [brand_infotwo_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoNineModel extends Equatable {BrandInfotwoNineModel({this.productcardlist3ItemList = const []}) {  }

List<Productcardlist3ItemModel> productcardlist3ItemList;

BrandInfotwoNineModel copyWith({List<Productcardlist3ItemModel>? productcardlist3ItemList}) { return BrandInfotwoNineModel(
productcardlist3ItemList : productcardlist3ItemList ?? this.productcardlist3ItemList,
); } 
@override List<Object?> get props => [productcardlist3ItemList];
 }
