// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';import 'notification_item_model.dart';/// This class defines the variables used in the [category_info_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoryInfoOneModel extends Equatable {CategoryInfoOneModel({this.userprofile1ItemList = const [], this.notificationItemList = const [], }) {  }

List<Userprofile1ItemModel> userprofile1ItemList;

List<NotificationItemModel> notificationItemList;

CategoryInfoOneModel copyWith({List<Userprofile1ItemModel>? userprofile1ItemList, List<NotificationItemModel>? notificationItemList, }) { return CategoryInfoOneModel(
userprofile1ItemList : userprofile1ItemList ?? this.userprofile1ItemList,
notificationItemList : notificationItemList ?? this.notificationItemList,
); } 
@override List<Object?> get props => [userprofile1ItemList,notificationItemList];
 }
