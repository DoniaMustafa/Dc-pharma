// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofileslider2_item_model.dart';import 'userprofile5_item_model.dart';import 'merkcomponent5_item_model.dart';import 'productcardgrid2_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {HomeModel({this.userprofileslider2ItemList = const [], this.userprofile5ItemList = const [], this.merkcomponent5ItemList = const [], this.productcardgrid2ItemList = const [], }) {  }

List<Userprofileslider2ItemModel> userprofileslider2ItemList;

List<Userprofile5ItemModel> userprofile5ItemList;

List<Merkcomponent5ItemModel> merkcomponent5ItemList;

List<Productcardgrid2ItemModel> productcardgrid2ItemList;

HomeModel copyWith({List<Userprofileslider2ItemModel>? userprofileslider2ItemList, List<Userprofile5ItemModel>? userprofile5ItemList, List<Merkcomponent5ItemModel>? merkcomponent5ItemList, List<Productcardgrid2ItemModel>? productcardgrid2ItemList, }) { return HomeModel(
userprofileslider2ItemList : userprofileslider2ItemList ?? this.userprofileslider2ItemList,
userprofile5ItemList : userprofile5ItemList ?? this.userprofile5ItemList,
merkcomponent5ItemList : merkcomponent5ItemList ?? this.merkcomponent5ItemList,
productcardgrid2ItemList : productcardgrid2ItemList ?? this.productcardgrid2ItemList,
); } 
@override List<Object?> get props => [userprofileslider2ItemList,userprofile5ItemList,merkcomponent5ItemList,productcardgrid2ItemList];
 }
