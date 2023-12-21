// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile2_item_model.dart';/// This class defines the variables used in the [category_info_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryInfoTabContainerModel extends Equatable {CategoryInfoTabContainerModel({this.userprofile2ItemList = const []}) {  }

List<Userprofile2ItemModel> userprofile2ItemList;

CategoryInfoTabContainerModel copyWith({List<Userprofile2ItemModel>? userprofile2ItemList}) { return CategoryInfoTabContainerModel(
userprofile2ItemList : userprofile2ItemList ?? this.userprofile2ItemList,
); } 
@override List<Object?> get props => [userprofile2ItemList];
 }
