import '../../../core/app_export.dart';/// This class is used in the [notificationlist_item_widget] screen.
class NotificationlistItemModel {NotificationlistItemModel({this.notificationImage, this.notificationText1, this.notificationText2, this.notificationText3, this.id, }) { notificationImage = notificationImage  ?? ImageConstant.imgTelevision;notificationText1 = notificationText1  ?? "1000 riyals have been deposited in your wallet";notificationText2 = notificationText2  ?? "30 may 2023 - 6:55 PM";notificationText3 = notificationText3  ?? "+1000\nEGP";id = id  ?? ""; }

String? notificationImage;

String? notificationText1;

String? notificationText2;

String? notificationText3;

String? id;

 }
