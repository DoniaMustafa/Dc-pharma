// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'sliderwidget_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_seventeen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxSeventeenModel extends Equatable {Iphone11ProMaxSeventeenModel({this.sliderwidgetItemList = const []}) {  }

List<SliderwidgetItemModel> sliderwidgetItemList;

Iphone11ProMaxSeventeenModel copyWith({List<SliderwidgetItemModel>? sliderwidgetItemList}) { return Iphone11ProMaxSeventeenModel(
sliderwidgetItemList : sliderwidgetItemList ?? this.sliderwidgetItemList,
); } 
@override List<Object?> get props => [sliderwidgetItemList];
 }
