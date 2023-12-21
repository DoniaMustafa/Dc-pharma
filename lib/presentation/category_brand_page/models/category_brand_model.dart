// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'grid_item_model.dart';/// This class defines the variables used in the [category_brand_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryBrandModel extends Equatable {CategoryBrandModel({this.gridItemList = const []}) {  }

List<GridItemModel> gridItemList;

CategoryBrandModel copyWith({List<GridItemModel>? gridItemList}) { return CategoryBrandModel(
gridItemList : gridItemList ?? this.gridItemList,
); } 
@override List<Object?> get props => [gridItemList];
 }
