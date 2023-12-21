// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'notificationlist_item_model.dart';/// This class defines the variables used in the [brand_infotwo_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BrandInfotwoModel extends Equatable {BrandInfotwoModel({this.notificationlistItemList = const []}) {  }

List<NotificationlistItemModel> notificationlistItemList;

BrandInfotwoModel copyWith({List<NotificationlistItemModel>? notificationlistItemList}) { return BrandInfotwoModel(
notificationlistItemList : notificationlistItemList ?? this.notificationlistItemList,
); } 
@override List<Object?> get props => [notificationlistItemList];
 }
