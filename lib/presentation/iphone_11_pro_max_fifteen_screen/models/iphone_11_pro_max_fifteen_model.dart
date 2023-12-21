// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userprofile3_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_fifteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxFifteenModel extends Equatable {Iphone11ProMaxFifteenModel({this.userprofile3ItemList = const []}) {  }

List<Userprofile3ItemModel> userprofile3ItemList;

Iphone11ProMaxFifteenModel copyWith({List<Userprofile3ItemModel>? userprofile3ItemList}) { return Iphone11ProMaxFifteenModel(
userprofile3ItemList : userprofile3ItemList ?? this.userprofile3ItemList,
); } 
@override List<Object?> get props => [userprofile3ItemList];
 }
