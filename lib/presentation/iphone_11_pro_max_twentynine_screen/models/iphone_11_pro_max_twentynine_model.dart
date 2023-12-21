// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'waitingtextsection_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_twentynine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxTwentynineModel extends Equatable {Iphone11ProMaxTwentynineModel({this.waitingtextsectionItemList = const []}) {  }

List<WaitingtextsectionItemModel> waitingtextsectionItemList;

Iphone11ProMaxTwentynineModel copyWith({List<WaitingtextsectionItemModel>? waitingtextsectionItemList}) { return Iphone11ProMaxTwentynineModel(
waitingtextsectionItemList : waitingtextsectionItemList ?? this.waitingtextsectionItemList,
); } 
@override List<Object?> get props => [waitingtextsectionItemList];
 }
