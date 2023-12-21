// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofileslider_item_model.dart';import 'merkcomponent2_item_model.dart';import 'productcardgrid_item_model.dart';/// This class defines the variables used in the [home_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeOneModel extends Equatable {HomeOneModel({this.userprofilesliderItemList = const [], this.merkcomponent2ItemList = const [], this.productcardgridItemList = const [], }) {  }

List<UserprofilesliderItemModel> userprofilesliderItemList;

List<Merkcomponent2ItemModel> merkcomponent2ItemList;

List<ProductcardgridItemModel> productcardgridItemList;

HomeOneModel copyWith({List<UserprofilesliderItemModel>? userprofilesliderItemList, List<Merkcomponent2ItemModel>? merkcomponent2ItemList, List<ProductcardgridItemModel>? productcardgridItemList, }) { return HomeOneModel(
userprofilesliderItemList : userprofilesliderItemList ?? this.userprofilesliderItemList,
merkcomponent2ItemList : merkcomponent2ItemList ?? this.merkcomponent2ItemList,
productcardgridItemList : productcardgridItemList ?? this.productcardgridItemList,
); } 
@override List<Object?> get props => [userprofilesliderItemList,merkcomponent2ItemList,productcardgridItemList];
 }
