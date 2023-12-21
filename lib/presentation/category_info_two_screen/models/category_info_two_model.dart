// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'productcard2_item_model.dart';/// This class defines the variables used in the [category_info_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryInfoTwoModel extends Equatable {CategoryInfoTwoModel({this.productcard2ItemList = const []}) {  }

List<Productcard2ItemModel> productcard2ItemList;

CategoryInfoTwoModel copyWith({List<Productcard2ItemModel>? productcard2ItemList}) { return CategoryInfoTwoModel(
productcard2ItemList : productcard2ItemList ?? this.productcard2ItemList,
); } 
@override List<Object?> get props => [productcard2ItemList];
 }
