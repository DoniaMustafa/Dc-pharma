import '../../../core/app_export.dart';/// This class is used in the [userprofileslider_item_widget] screen.
class UserprofilesliderItemModel {UserprofilesliderItemModel({this.userImage, this.gradientImage, this.whatsappImage, this.reachRateText, this.id, }) { userImage = userImage  ?? ImageConstant.imgImg;gradientImage = gradientImage  ?? ImageConstant.imgGradient;whatsappImage = whatsappImage  ?? ImageConstant.imgMaskGroup;reachRateText = reachRateText  ?? "With a reach rate of more than 200 pharmaceutical companies";id = id  ?? ""; }

String? userImage;

String? gradientImage;

String? whatsappImage;

String? reachRateText;

String? id;

 }
