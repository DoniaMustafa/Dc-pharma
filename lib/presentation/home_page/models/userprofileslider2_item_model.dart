import '../../../core/app_export.dart';/// This class is used in the [userprofileslider2_item_widget] screen.
class Userprofileslider2ItemModel {Userprofileslider2ItemModel({this.userImage, this.gradientImage, this.whatsAppImage, this.reachRateText, this.rectangleImage, this.flashSaleText, this.id, }) { userImage = userImage  ?? ImageConstant.imgImg;gradientImage = gradientImage  ?? ImageConstant.imgGradient;whatsAppImage = whatsAppImage  ?? ImageConstant.imgMaskGroup;reachRateText = reachRateText  ?? "With a reach rate of more than 200 pharmaceutical companies";rectangleImage = rectangleImage  ?? ImageConstant.imgRectangle18654;flashSaleText = flashSaleText  ?? "50% flash sale";id = id  ?? ""; }

String? userImage;

String? gradientImage;

String? whatsAppImage;

String? reachRateText;

String? rectangleImage;

String? flashSaleText;

String? id;

 }
