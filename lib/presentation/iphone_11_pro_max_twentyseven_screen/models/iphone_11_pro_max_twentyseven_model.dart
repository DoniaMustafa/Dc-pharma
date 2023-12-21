// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'slidertitle_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_twentyseven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxTwentysevenModel extends Equatable {Iphone11ProMaxTwentysevenModel({this.slidertitleItemList = const []}) {  }

List<SlidertitleItemModel> slidertitleItemList;

Iphone11ProMaxTwentysevenModel copyWith({List<SlidertitleItemModel>? slidertitleItemList}) { return Iphone11ProMaxTwentysevenModel(
slidertitleItemList : slidertitleItemList ?? this.slidertitleItemList,
); } 
@override List<Object?> get props => [slidertitleItemList];
 }
