// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofileslider1_item_model.dart';import 'merkcomponent3_item_model.dart';import 'productcardgrid1_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_sixty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxSixtyModel extends Equatable {Iphone11ProMaxSixtyModel({this.userprofileslider1ItemList = const [], this.merkcomponent3ItemList = const [], this.productcardgrid1ItemList = const [], }) {  }

List<Userprofileslider1ItemModel> userprofileslider1ItemList;

List<Merkcomponent3ItemModel> merkcomponent3ItemList;

List<Productcardgrid1ItemModel> productcardgrid1ItemList;

Iphone11ProMaxSixtyModel copyWith({List<Userprofileslider1ItemModel>? userprofileslider1ItemList, List<Merkcomponent3ItemModel>? merkcomponent3ItemList, List<Productcardgrid1ItemModel>? productcardgrid1ItemList, }) { return Iphone11ProMaxSixtyModel(
userprofileslider1ItemList : userprofileslider1ItemList ?? this.userprofileslider1ItemList,
merkcomponent3ItemList : merkcomponent3ItemList ?? this.merkcomponent3ItemList,
productcardgrid1ItemList : productcardgrid1ItemList ?? this.productcardgrid1ItemList,
); } 
@override List<Object?> get props => [userprofileslider1ItemList,merkcomponent3ItemList,productcardgrid1ItemList];
 }
