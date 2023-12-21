// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'slider1_item_model.dart';import 'merkcomponent4_item_model.dart';import 'productcard9_item_model.dart';/// This class defines the variables used in the [home_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeThreeModel extends Equatable {HomeThreeModel({this.slider1ItemList = const [], this.merkcomponent4ItemList = const [], this.productcard9ItemList = const [], }) {  }

List<Slider1ItemModel> slider1ItemList;

List<Merkcomponent4ItemModel> merkcomponent4ItemList;

List<Productcard9ItemModel> productcard9ItemList;

HomeThreeModel copyWith({List<Slider1ItemModel>? slider1ItemList, List<Merkcomponent4ItemModel>? merkcomponent4ItemList, List<Productcard9ItemModel>? productcard9ItemList, }) { return HomeThreeModel(
slider1ItemList : slider1ItemList ?? this.slider1ItemList,
merkcomponent4ItemList : merkcomponent4ItemList ?? this.merkcomponent4ItemList,
productcard9ItemList : productcard9ItemList ?? this.productcard9ItemList,
); } 
@override List<Object?> get props => [slider1ItemList,merkcomponent4ItemList,productcard9ItemList];
 }
