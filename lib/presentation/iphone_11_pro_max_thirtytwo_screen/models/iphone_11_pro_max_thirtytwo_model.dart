// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'sliderwidget3_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_thirtytwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxThirtytwoModel extends Equatable {Iphone11ProMaxThirtytwoModel({this.sliderwidget3ItemList = const []}) {  }

List<Sliderwidget3ItemModel> sliderwidget3ItemList;

Iphone11ProMaxThirtytwoModel copyWith({List<Sliderwidget3ItemModel>? sliderwidget3ItemList}) { return Iphone11ProMaxThirtytwoModel(
sliderwidget3ItemList : sliderwidget3ItemList ?? this.sliderwidget3ItemList,
); } 
@override List<Object?> get props => [sliderwidget3ItemList];
 }
