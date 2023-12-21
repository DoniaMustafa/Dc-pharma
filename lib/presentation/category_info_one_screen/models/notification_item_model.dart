import '../../../core/app_export.dart';/// This class is used in the [notification_item_widget] screen.
class NotificationItemModel {NotificationItemModel({this.televisionImage, this.messageText, this.timestampText, this.pointText, this.id, }) { televisionImage = televisionImage  ?? ImageConstant.imgTelevision;messageText = messageText  ?? "1000 gift points were obtained on your latest bill";timestampText = timestampText  ?? "30 may 2023 - 6:55 PM";pointText = pointText  ?? "+1000\npoint";id = id  ?? ""; }

String? televisionImage;

String? messageText;

String? timestampText;

String? pointText;

String? id;

 }
