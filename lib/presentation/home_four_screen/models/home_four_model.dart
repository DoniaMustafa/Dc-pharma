// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile_item_model.dart';import 'merkcomponent_item_model.dart';import 'productcard_item_model.dart';/// This class defines the variables used in the [home_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeFourModel extends Equatable {HomeFourModel({this.userprofileItemList = const [], this.merkcomponentItemList = const [], this.productcardItemList = const [], }) {  }

List<UserprofileItemModel> userprofileItemList;

List<MerkcomponentItemModel> merkcomponentItemList;

List<ProductcardItemModel> productcardItemList;

HomeFourModel copyWith({List<UserprofileItemModel>? userprofileItemList, List<MerkcomponentItemModel>? merkcomponentItemList, List<ProductcardItemModel>? productcardItemList, }) { return HomeFourModel(
userprofileItemList : userprofileItemList ?? this.userprofileItemList,
merkcomponentItemList : merkcomponentItemList ?? this.merkcomponentItemList,
productcardItemList : productcardItemList ?? this.productcardItemList,
); } 
@override List<Object?> get props => [userprofileItemList,merkcomponentItemList,productcardItemList];
 }
