// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'userprofile4_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_thirty_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxThirtyModel extends Equatable {Iphone11ProMaxThirtyModel({this.userprofile4ItemList = const []}) {  }

List<Userprofile4ItemModel> userprofile4ItemList;

Iphone11ProMaxThirtyModel copyWith({List<Userprofile4ItemModel>? userprofile4ItemList}) { return Iphone11ProMaxThirtyModel(
userprofile4ItemList : userprofile4ItemList ?? this.userprofile4ItemList,
); } 
@override List<Object?> get props => [userprofile4ItemList];
 }
