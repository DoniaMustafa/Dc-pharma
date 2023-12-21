// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'slider_item_model.dart';import 'merkcomponent1_item_model.dart';import 'productcard8_item_model.dart';/// This class defines the variables used in the [home_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeTwoModel extends Equatable {HomeTwoModel({this.sliderItemList = const [], this.merkcomponent1ItemList = const [], this.productcard8ItemList = const [], }) {  }

List<SliderItemModel> sliderItemList;

List<Merkcomponent1ItemModel> merkcomponent1ItemList;

List<Productcard8ItemModel> productcard8ItemList;

HomeTwoModel copyWith({List<SliderItemModel>? sliderItemList, List<Merkcomponent1ItemModel>? merkcomponent1ItemList, List<Productcard8ItemModel>? productcard8ItemList, }) { return HomeTwoModel(
sliderItemList : sliderItemList ?? this.sliderItemList,
merkcomponent1ItemList : merkcomponent1ItemList ?? this.merkcomponent1ItemList,
productcard8ItemList : productcard8ItemList ?? this.productcard8ItemList,
); } 
@override List<Object?> get props => [sliderItemList,merkcomponent1ItemList,productcard8ItemList];
 }
