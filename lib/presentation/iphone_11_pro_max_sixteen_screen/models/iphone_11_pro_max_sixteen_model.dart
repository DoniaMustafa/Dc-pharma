// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'slidercomponent_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_sixteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxSixteenModel extends Equatable {Iphone11ProMaxSixteenModel({this.slidercomponentItemList = const []}) {  }

List<SlidercomponentItemModel> slidercomponentItemList;

Iphone11ProMaxSixteenModel copyWith({List<SlidercomponentItemModel>? slidercomponentItemList}) { return Iphone11ProMaxSixteenModel(
slidercomponentItemList : slidercomponentItemList ?? this.slidercomponentItemList,
); } 
@override List<Object?> get props => [slidercomponentItemList];
 }
