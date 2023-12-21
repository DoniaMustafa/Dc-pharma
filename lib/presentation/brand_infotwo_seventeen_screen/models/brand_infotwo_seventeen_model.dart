// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard7_item_model.dart';/// This class defines the variables used in the [brand_infotwo_seventeen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoSeventeenModel extends Equatable {BrandInfotwoSeventeenModel({this.productcard7ItemList = const []}) {  }

List<Productcard7ItemModel> productcard7ItemList;

BrandInfotwoSeventeenModel copyWith({List<Productcard7ItemModel>? productcard7ItemList}) { return BrandInfotwoSeventeenModel(
productcard7ItemList : productcard7ItemList ?? this.productcard7ItemList,
); } 
@override List<Object?> get props => [productcard7ItemList];
 }
