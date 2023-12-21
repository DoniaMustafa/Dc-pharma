// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'sliderwidget1_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_twentyeight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxTwentyeightModel extends Equatable {Iphone11ProMaxTwentyeightModel({this.sliderwidget1ItemList = const []}) {  }

List<Sliderwidget1ItemModel> sliderwidget1ItemList;

Iphone11ProMaxTwentyeightModel copyWith({List<Sliderwidget1ItemModel>? sliderwidget1ItemList}) { return Iphone11ProMaxTwentyeightModel(
sliderwidget1ItemList : sliderwidget1ItemList ?? this.sliderwidget1ItemList,
); } 
@override List<Object?> get props => [sliderwidget1ItemList];
 }
