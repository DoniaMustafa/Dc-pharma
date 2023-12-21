// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'sliderwidget2_item_model.dart';/// This class defines the variables used in the [iphone_11_pro_max_thirtyone_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class Iphone11ProMaxThirtyoneModel extends Equatable {Iphone11ProMaxThirtyoneModel({this.sliderwidget2ItemList = const []}) {  }

List<Sliderwidget2ItemModel> sliderwidget2ItemList;

Iphone11ProMaxThirtyoneModel copyWith({List<Sliderwidget2ItemModel>? sliderwidget2ItemList}) { return Iphone11ProMaxThirtyoneModel(
sliderwidget2ItemList : sliderwidget2ItemList ?? this.sliderwidget2ItemList,
); } 
@override List<Object?> get props => [sliderwidget2ItemList];
 }
